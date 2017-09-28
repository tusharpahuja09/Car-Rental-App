class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.datetime :reserve_date
      t.datetime :checkout_date
      t.datetime :returndate
      t.reference :car
      t.timestamps null: false
    end
  end
end
