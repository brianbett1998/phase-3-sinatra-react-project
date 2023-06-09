class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment

      t.belongs_to :user, foreign_key: true
      t.belongs_to :car, foreign_key: true
    
    end
  end
end
