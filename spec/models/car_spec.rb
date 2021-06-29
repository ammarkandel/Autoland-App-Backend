require 'rails_helper'

RSpec.describe Car, type: :model do
  context 'test creation of car' do
    it 'return true if created a valid car' do
      u1 = Car.new({ name: 'tesla', color: 'red', category: 'sport', price: 500000, release_year: 2020, speed: 'from 0 to 100 in 2.1' })
      u1.save
      expect(u1.valid?).to eq(true)
    end

    it 'return false if created a invalid car category missing speed' do
      u1 = Car.new({ name: 'tesla', color: 'red', category: 'sport', price: 500000, release_year: 2020 })
      u1.save
      expect(u1.valid?).to eq(false)
    end

    it 'return false if created a invalid car category missing category' do
      u1 = Car.new({ name: 'tesla', color: 'red', price: 500000, release_year: 2020, speed: 'from 0 to 100 in 2.1' })
      u1.save
      expect(u1.valid?).to eq(false)
    end

    it 'return false if created a invalid datatype' do
      u1 = Car.new({ name: 'tesla', color: 'red', category: 'sport', price: 'invalid', release_year: 'invalid', speed: 'from 0 to 100 in 2.1' })
      u1.save
      expect(u1.valid?).to eq(false)
    end
  end
end
