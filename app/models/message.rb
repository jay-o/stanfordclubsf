class Message
  include ActiveAttr::Model
  
  attribute :name
  attribute :email
  attribute :message

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
  validates :message, presence: true, length: { maximum: 500 }

  def send_contact_us
    MessageMailer.contact_us(self).deliver
  end
end