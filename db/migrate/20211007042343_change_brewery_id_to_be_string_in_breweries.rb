class ChangeBreweryIdToBeStringInBreweries < ActiveRecord::Migration[6.0]
  def change
    change_column :breweries, :brewery_id, :string
  end
end
