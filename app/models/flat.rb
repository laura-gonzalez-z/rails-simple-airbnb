class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, numericality: { only_integer: true }
  validates :number_of_guests, numericality: { only_integer: true }
  validates :image, format: { with: URI.regexp, message: 'Must be an url' }, allow_blank: true
end
