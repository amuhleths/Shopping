class Shop < ActiveRecord::Base
  scope :name_like, lambda { |value| where("shops.name LIKE ?", "%#{value}%") }
end
