require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  let!(:cars) { FactoryBot.create_list(:car, 5) }
  before { get '/cars.json' }

  context 'Get cars' do
    it 'Expect not empty response data' do
      expect(JSON.parse(response.body)).not_to be_empty
    end

    it 'Return 200 response' do
      expect(response).to have_http_status(:success)
    end
  end
end
