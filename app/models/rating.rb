class Rating < ApplicationRecord
  belongs_to :user

  # part of SOLUTION 1 to fetching ratings
  # def self.ratings_for_brewery(brewery_id)
  #   where("brewery_id = ?", brewery_id)
  # end

  # fetch individual brewery ratings

end
