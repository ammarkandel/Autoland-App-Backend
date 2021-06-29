class Car < ApplicationRecord
  has_many :appointments
  validates :name, :color, :category, :price, :release_year, :speed, presence: true
  validates :price, :release_year, numericality: { only_integer: true }
end
