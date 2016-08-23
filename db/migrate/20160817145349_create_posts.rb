class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.references :user, index: true, foreign_key: true
      t.references :reddit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end