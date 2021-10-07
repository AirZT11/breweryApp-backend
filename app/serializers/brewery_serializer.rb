class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :brewery_type, :city, :country, :id, :latitude, :longitude, :name, :phone, :postal_code, :state, :street, :website_url
end
