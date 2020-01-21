class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country
      t.belongs_to :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
