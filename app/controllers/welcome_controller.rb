class WelcomeController < ApplicationController
  def index
    render json: {message: 'Back-end Challenge 2021 🏅 - Space Flight News'}
  end
end
