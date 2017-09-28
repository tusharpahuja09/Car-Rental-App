class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :license
      t.string :manufac
      t.string :model
      t.string :rent_rate
      t.string :style
      t.string :location
      t.string :status

      t.timestamps null: false
    end
  end
end
