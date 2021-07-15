require 'rails_helper'

RSpec.describe Car, type: :model do
  context 'Test car validation' do
    it 'Car should have many appointments' do
      should have_many(:appointments)
    end

    it 'Name should presence' do
      should validate_presence_of(:name)
    end

    it 'Price should presence' do
      should validate_presence_of(:price)
    end

    it 'Color should presence' do
      should validate_presence_of(:color)
    end

    it 'Category should presence' do
      should validate_presence_of(:category)
    end

    it 'Release_year should presence' do
      should validate_presence_of(:release_year)
    end

    it 'Speed should presence' do
      should validate_presence_of(:speed)
    end
  end
end
