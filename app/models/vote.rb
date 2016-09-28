class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true

  # TODO: fix validation
  validates :user_id, uniqueness: true

end
