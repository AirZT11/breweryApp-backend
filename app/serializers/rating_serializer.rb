class RatingSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :rating, :user_id, :brewery_id, :brewery_name, :review
  belongs_to :user
end
