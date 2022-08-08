class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :type

      t.string :name, null: false
      t.string :alias
      t.string :address, null: false, index: { unique: true }
      t.string :category
      t.integer :rating

      t.timestamps
    end
  end
end
