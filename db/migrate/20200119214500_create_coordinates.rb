class CreateCoordinates < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinates do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
