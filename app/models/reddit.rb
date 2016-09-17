class Reddit < ActiveRecord::Base
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :ratings
  has_many :users, through: :ratings

  validates :title, presence: true,
                    length: { minimum: 1 }
end
