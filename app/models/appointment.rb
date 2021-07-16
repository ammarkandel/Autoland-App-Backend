class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :car, optional: true
  validates :time, :date, presence: true
end
