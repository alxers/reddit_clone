class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :body, presence: true,
                    length: { minimum: 1 }

  before_create do
    self.build_rating
  end
end
