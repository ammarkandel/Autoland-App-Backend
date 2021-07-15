class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :time, :date, presence: true
end
