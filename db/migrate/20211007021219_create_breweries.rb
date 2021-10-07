class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :brewery_type
      t.string :city
      t.string :country
      t.string :latitude
      t.string :longitude
      t.string :name
      t.string :phone
      t.string :postal_code
      t.string :state
      t.string :street
      t.string :website_url

      t.timestamps
    end
  end
end
