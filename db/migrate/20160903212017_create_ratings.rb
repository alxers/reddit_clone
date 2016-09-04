class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.boolean :voted, default: false
      t.belongs_to :post, index: true, foreign_key: true
      t.belongs_to :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
