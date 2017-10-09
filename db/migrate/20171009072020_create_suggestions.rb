class CreateSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
      t.string :model
      t.string :manufac

      t.timestamps
    end
  end
end
