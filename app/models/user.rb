# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  position        :string(255)
#  committee_id    :integer
#  state           :string(255)
#

class User < ActiveRecord::Base
	attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :state, :committee_id, :position
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_create :create_remember_token

  validates :first_name,  presence: true
  validates :last_name,   presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true, on: :create

  belongs_to :committee

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.now
    save!
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
