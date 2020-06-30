class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :delete_all

  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

## Custom scope 1
  def self.angular
    where(subtitle: "Angular")
  end

  def self.by_position
    order("position ASC")
  end

## Custom scope 2
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: "600", width: "400")
    self.thumb_image ||= Placeholder.image_generator(height: "200", width: "150" )
  end
end

## ||=
# if self.main_image == nil
#   self.main_image = "http://placehold.it/300x200"
