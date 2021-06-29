require 'rails_helper'

RSpec.describe User, type: :model do
  context 'test creation of user' do
    it 'return true if is created a valid user' do
      u1 = User.new({ email: 'test12@s.com', username: 'Test21', password: '123456', password_confirmation: '123456' })
      u1.save
      expect(u1.valid?).to eq(true)
    end

    it 'return false if is created a invalid email' do
      u1 = User.new({ email: 'test12s.com', username: 'Test21', password: '123456', password_confirmation: '123456' })
      u1.save
      expect(u1.valid?).to eq(false)
    end

    it 'return false if is created a invalid username' do
      u1 = User.new({ email: 'test12@s.com', username: 'Te', password: '123456', password_confirmation: '123456' })
      u1.save
      expect(u1.valid?).to eq(false)
    end
  end
end
