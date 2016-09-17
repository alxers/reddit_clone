class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :ratings
  has_many :users, through: :ratings

  validates :body, presence: true,
                    length: { minimum: 1 }

  before_create do
    self.build_rating
  end
end
