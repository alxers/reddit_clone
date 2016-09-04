class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :reddit
  has_many :comments, dependent: :destroy
  has_one :rating, dependent: :destroy

  validates :title, presence: true,
                   length: { minimum: 1 }

  validates :body, presence: true,
                  length: { minimum: 1 }
end
