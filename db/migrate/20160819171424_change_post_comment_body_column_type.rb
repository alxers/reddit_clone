class ChangePostCommentBodyColumnType < ActiveRecord::Migration
  def up
    change_column :posts, :body, :text
    change_column :comments, :body, :text
  end

  def down
    change_column :posts, :body, :string
    change_column :comments, :body, :string
  end
end
