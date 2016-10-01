class Post < ActiveRecord::Base

  include Votable

  belongs_to :user
  belongs_to :reddit
  has_many :comments, dependent: :destroy

  validates :title, presence: true,
                   length: { minimum: 1 }

  validates :body, presence: true,
                  length: { minimum: 1 }

end
