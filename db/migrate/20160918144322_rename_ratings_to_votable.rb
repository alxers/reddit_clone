class RenameRatingsToVotable < ActiveRecord::Migration
  def up
    rename_table :ratings, :votes
    change_table(:votes) do |t|
      t.rename :votes, :vote
      t.references :votable, polymorphic: true, inex: true
      t.remove :comment_id
      t.remove :reddit_id
      t.remove :post_id
      t.integer :user_id
    end
  end

  def down
    rename_table :votes, :ratings

    change_table(:ratings) do |t|
      t.rename :vote, :votes
      t.remove_references :votable, polymorphic: true, inex: true
      t.integer :comment_id
      t.integer :reddit_id
      t.integer :post_id
      t.remove :user_id
    end
  end
end
