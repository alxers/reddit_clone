class RenameMessagesToPersonalMessages < ActiveRecord::Migration
  def change
    rename_table :messages, :personal_messages
  end
end
