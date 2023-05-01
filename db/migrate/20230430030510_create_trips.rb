class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :purchase_token
      
          t.timestamps
    end
  end
end