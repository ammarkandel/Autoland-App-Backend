class Car < ApplicationRecord
  has_many :appointments
  validates :name, :color, :category, :price, :release_year, :speed, presence: true
end
