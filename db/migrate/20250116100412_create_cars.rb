class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.references :owner, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.integer :year
      t.string :fuel

      t.timestamps
    end
  end
end
