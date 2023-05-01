class CreateTravelOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :travel_options do |t|
      t.string :name
      t.string :description
      t.string :imagepath
      t.string :price
   
      t.timestamps
    end
  end
end

