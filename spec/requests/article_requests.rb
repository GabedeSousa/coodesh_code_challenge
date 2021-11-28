require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    it "returns success status" do
      get articles_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /articles" do
    it "post an article" do
      get articles_path
      expect(response).to have_http_status(200)
    end
  end
end