class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :reddit
  has_many :comments, dependent: :destroy
  has_many :votes, as: :votable

  validates :title, presence: true,
                   length: { minimum: 1 }

  validates :body, presence: true,
                  length: { minimum: 1 }

  before_create do
    self.build_vote
  end
end
