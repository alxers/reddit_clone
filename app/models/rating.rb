class Rating < ActiveRecord::Base
  belongs_to :posts
  belongs_to :comments
  belongs_to :reddits
  belongs_to :user

  private
    def up
      self.update_attribute(votes: votes + 1)
    end

    def down
      self.update_attribute(votes: votes - 1)
    end
end
