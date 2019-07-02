# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'list restaurants', type: :request do
  let!(:user) { FactoryBot.create(:user) }
  let!(:restaurant) { FactoryBot.create(:restaurant, user: user) }
  let!(:other_restaurant) { FactoryBot.create(:restaurant) }

  let(:token) do
    FactoryBot.create(:access_token, resource_owner_id: user.id).token
  end

  context 'when not authenticated' do
    it 'returns unauthorized' do
      get '/restaurants'

      expect(response.status).to eq(401)
    end
  end

  context 'when authenticated' do
    it "returns user's posts" do
      headers = { 'Authorization' => "Bearer #{token}" }

      get '/restaurants', headers: headers

      expect(response).to be_successful

      jsonapi_response = JSON.parse(response.body)
      restaurants = jsonapi_response['data']

      expect(restaurants.length).to eq(1)
      expect(restaurants[0]['attributes']['name']).to eq(restaurant.name)
    end
  end
end
