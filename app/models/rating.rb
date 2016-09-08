class Rating < ActiveRecord::Base
  belongs_to :posts
  belongs_to :comments
end
