require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Test user model validation' do
    it 'User should have many appointments' do
      should have_many(:appointments)
    end

    it 'Username should presence' do
      should validate_presence_of(:username)
    end

    it 'Check the validation of username least characters' do
      should validate_length_of(:username).is_at_least(3)
    end

    it 'Email should presence' do
      should validate_presence_of(:email)
    end

    it 'Test the email format' do
      should allow_value('email@addresse.test').for(:email)
      should_not allow_value('email@addressetest').for(:email)
      should_not allow_value('emailaddressetest').for(:email)
    end
  end
end
