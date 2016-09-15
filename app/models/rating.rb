class Rating < ActiveRecord::Base
  # TODO: set up many-to-many between rating, reddits, posts and comments
  belongs_to :posts
  belongs_to :comments

  private
    def up
      self.update_attribute(votes: votes + 1)
    end

    def down
      self.update_attribute(votes: votes - 1)
    end
end
