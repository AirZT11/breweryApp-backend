class ChangeBreweryIdToBeStringInRatings < ActiveRecord::Migration[6.0]
  def change
    change_column :ratings, :brewery_id, :string
  end
end
