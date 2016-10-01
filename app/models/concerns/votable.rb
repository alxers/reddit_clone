module Votable
  extend ActiveSupport::Concern

  included do
    has_many :votes, as: :votable, dependent: :destroy

    before_create do
      votes.build(user_id: user.id)
    end
  end
end
