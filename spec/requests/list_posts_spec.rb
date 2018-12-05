# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'list posts', type: :request do
  let!(:user) { FactoryBot.create(:user) }
  let!(:post) { FactoryBot.create(:post, user: user) }
  let!(:other_post) { FactoryBot.create(:post) }

  let(:token) { FactoryBot.create(:access_token, resource_owner_id: user.id).token }

  context 'when not authenticated' do
    it 'returns unauthorized' do
      get '/posts'

      expect(response.status).to eq(401)
    end
  end

  context 'when authenticated' do
    it "returns user's posts" do
      headers = {
        'Authorization' => "Bearer #{token}",
      }

      get '/posts', headers: headers

      expect(response).to be_successful

      jsonapi_response = JSON.parse(response.body)
      posts = jsonapi_response['data']

      expect(posts.length).to eq(1)
      expect(posts[0]['attributes']['title']).to eq(post.title)
    end
  end
end
