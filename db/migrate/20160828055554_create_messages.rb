class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.string :body
      t.integer :reciever_id
      t.integer :sender_id
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
