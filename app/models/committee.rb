class Committee < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :events

  before_validation :generate_slug
  
  validates :name, :description, presence: true
  validates	:slug, presence: true, uniqueness: true

  def to_param
    slug
  end

  def generate_slug
    self.slug = name.gsub("&", "and").parameterize
  end
end
