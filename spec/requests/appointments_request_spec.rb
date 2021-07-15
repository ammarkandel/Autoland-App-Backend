require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  let!(:appointments) { FactoryBot.create_list(:appointment, 5) }

  describe 'GET appointments' do
    before { get '/user_appointments.json' }

    it 'Expect not empty response data' do
      expect(JSON.parse(response.body)).not_to be_empty
    end

    it 'Return 200 response' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST appointments' do
    before do
      post '/appointments.json', params: { appointment:{ date: '2/6/1999', time: '12:10', car_id: 1, user_id: 1 } }
    end

    it 'returns the date' do
      expect(JSON.parse(response.body)['date']).to eq('2/6/1999')
    end

    it 'returns the time' do
      expect(JSON.parse(response.body)['time']).to eq('12:10')
    end

    it 'returns the user_id' do
      expect(JSON.parse(response.body)['user_id']).to eq(1)
    end

    it 'returns the car_id' do
      expect(JSON.parse(response.body)['car_id']).to eq(1)
    end
  end
end
