require 'rails_helper'

RSpec.describe Appointment, type: :model do
  context 'Test appointment validation' do
    it 'Time should presence' do
      should validate_presence_of(:time)
    end

    it 'Date should presence' do
      should validate_presence_of(:date)
    end
  end
end
