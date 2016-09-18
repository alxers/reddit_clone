class Reddit < ActiveRecord::Base
  belongs_to :user
  has_many :posts, dependent: :destroy


  validates :title, presence: true,
                    length: { minimum: 1 }
end
