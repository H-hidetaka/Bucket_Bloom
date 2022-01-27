require 'rails_helper'
RSpec.describe 'ユーザー機能', type: :request do

  describe "POST /register" do
    before do
      @register = FactoryBot.create(:user)
      post "/api/auth/register.json"
      get '/api/v1/register'
      json = JSON.parse(response.body)

      # リクエスト成功を表す200が返ってきたか確認する。
      expect(response.status).to eq(200)

      # 正しい数のデータが返されたか確認。
      expect(json['data'].length).to eq(10)
    end
    end
  end
