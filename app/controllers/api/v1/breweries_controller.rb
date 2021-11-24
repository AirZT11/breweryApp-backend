class Api::V1::BreweriesController < ApplicationController
  require 'rest-client'

  # def search_breweries
  #   url = 'https://api.openbrewerydb.org/breweries/search'
  #   response = RestClient.get(url, {query: params[:query]})
  #   if response
  #     render json: response
  #     # { brewery: BrewerySerializer.new(response) }, status: :accepted
  #   else
  #     render json: { error: "Breweries not found"}, status: :unprocessable_entity
  #   end
  # end

  private

    # Only allow a trusted parameter "white list" through.
    def brewery_params
      params.permit(:query)
    end


end
