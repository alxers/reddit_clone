class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true

  private
    def up
      self.update_attribute(vote: vote + 1)
    end

    def down
      self.update_attribute(vote: vote - 1)
    end

end
