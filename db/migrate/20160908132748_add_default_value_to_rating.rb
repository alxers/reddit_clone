class AddDefaultValueToRating < ActiveRecord::Migration
  def up
    remove_column :ratings, :voted
    change_column :ratings, :rating, :integer, default: 0, null: false
    rename_column :ratings, :rating, :votes
  end

  def down
    add_column :ratings, :voted, :boolean, default: false
    rename_column :ratings, :votes, :rating
    change_column :ratings, :rating, :integer, default: 0
  end
end
