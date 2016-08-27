class AddSenderRecieverToComments < ActiveRecord::Migration
  def change
    add_column :comments, :sender_id, :integer
    add_column :comments, :reciever_id, :integer
  end
end
