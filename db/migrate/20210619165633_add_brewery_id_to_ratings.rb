class AddBreweryIdToRatings < ActiveRecord::Migration[6.0]
  def change
    add_column :ratings, :brewery_id, :integer
  end
end
