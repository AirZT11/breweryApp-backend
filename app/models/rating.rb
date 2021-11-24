class Rating < ApplicationRecord
  belongs_to :user
  # validates :user_id, uniqueness: true, if: :user_already_review?
  # belongs_to :brewery

  # fetch individual brewery ratings
  def self.for_brewery(brewery_id)
    where("brewery_id = ?", brewery_id)
  end

  # def self.user_reviews(user_id)
  #   where("user_id = ?", user_id)
  # end

  def user_already_review?
    
  end

  # def self.average(brewery_id)
  #   ratings = where("brewery_id = ?", brewery_id)
  #   ratings.average("rating")
  # end

end
