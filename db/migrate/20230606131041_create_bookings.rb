class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :total_price

      t.belongs_to :user, foreign_key: true
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
