class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :votes, as: :votable

  validates :body, presence: true,
                    length: { minimum: 1 }

  before_create do
    self.build_votes
  end
end
