require 'rails_helper'

RSpec.describe Api::V1::AuthsController, type: :controller do
  describe 'POST /auth' do
    it 'returns an authentication token' do
      User.create(username: 'username', email: 'test@user.com', password: 'password')
      post :create, params: { auth: { email: 'test@user.com', password: 'password' } }
      result = JSON.parse(response.body)
      token = result['success']['token']
      expect(token.length).to be > 0
    end

    it 'returns an invalid credential error' do
      post :create, params: { auth: { email: 'wrong@user.com', password: 'badpassword' } }
      expect(response).to have_http_status(401)
    end
  end
end
