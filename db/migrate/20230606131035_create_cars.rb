class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.decimal :price
      t.boolean :available, default: true

      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
