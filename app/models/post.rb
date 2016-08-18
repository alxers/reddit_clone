class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :reddit
  has_many :comments
end
