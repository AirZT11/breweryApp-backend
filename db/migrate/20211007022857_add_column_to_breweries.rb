class AddColumnToBreweries < ActiveRecord::Migration[6.0]
  def change
    add_column :breweries, :brewery_id, :integer
  end
end
