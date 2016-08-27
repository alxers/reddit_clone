class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  belongs_to :sender, class_name: 'User', foreign_key: :sender_id
  belongs_to :reciever, class_name: 'User', foreign_key: :reciever_id

  validates :body, presence: true,
                    length: { minimum: 1 }

end
