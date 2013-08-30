# == Schema Information
#
# Table name: committees
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string(255)
#

class Committee < ActiveRecord::Base
  attr_accessible :description, :name, :slug

  has_many :events
  has_many :users

  before_validation :generate_slug
  validates :slug, presence: true, uniqueness: true
  
  validates :name, :description, presence: true
  validates	:slug, presence: true, uniqueness: true

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= name.gsub("&", "and").parameterize
  end
end
