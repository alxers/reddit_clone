class AddRedditsIdToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :reddit_id, :integer
  end
end
