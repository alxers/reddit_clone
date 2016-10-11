class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments
  has_many :reddits
  has_many :recieved_messages, class_name: 'PersonalMessage', foreign_key: :reciever_id
  has_many :sent_messages, class_name: 'PersonalMessage', foreign_key: :sender_id
  has_many :votes
  has_many :followers, class_name: 'Friendship', foreign_key: :follower_id
  has_many :followed, class_name: 'Friendship', foreign_key: :followed_id

end
