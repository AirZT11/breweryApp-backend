class BrewerySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  # attributes :id, :brewery_type, :city, :country, :id, :latitude, :longitude, :name, :phone, :postal_code, :state, :street, :website_url, :brewery_id
end
