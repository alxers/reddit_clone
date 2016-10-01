class Reddit < ActiveRecord::Base

  include Votable
  
  belongs_to :user
  has_many :posts, dependent: :destroy

  validates :title, presence: true,
                    length: { minimum: 1 }
end
