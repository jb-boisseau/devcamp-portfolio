class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
## Custom scope 1
  def self.angular
    where(subtitle: "Angular")
  end
## Custom scope 2
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/300x200"
  end
end

## ||=
# if self.main_image == nil
#   self.main_image = "http://placehold.it/300x200"
