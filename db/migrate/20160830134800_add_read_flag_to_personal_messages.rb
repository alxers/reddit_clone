class AddReadFlagToPersonalMessages < ActiveRecord::Migration
  def change
    add_column :personal_messages, :read, :boolean, default: false, null: false
  end
end
