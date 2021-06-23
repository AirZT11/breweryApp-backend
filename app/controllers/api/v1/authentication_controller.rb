class Api::V1::AuthenticationController < ApplicationController
  def create
    
    render json: {}, status: :created
  end
end