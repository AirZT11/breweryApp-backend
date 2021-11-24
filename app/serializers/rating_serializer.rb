class RatingSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :rating, :user_id, :brewery_id, :brewery_name, :review, :created_at
  belongs_to :user
  # belongs_to :brewery
end
