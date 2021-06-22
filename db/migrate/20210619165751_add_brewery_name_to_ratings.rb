class AddBreweryNameToRatings < ActiveRecord::Migration[6.0]
  def change
    add_column :ratings, :brewery_name, :text
  end
end
