class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true

  private
    def up
      self.update_attribute(votes: votes + 1)
    end

    def down
      self.update_attribute(votes: votes - 1)
    end
end