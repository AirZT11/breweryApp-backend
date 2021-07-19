class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rating, :user_id, :brewery_id, :brewery_name, :review
  belongs_to :user
end
