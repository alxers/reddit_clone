class PersonalMessage < ActiveRecord::Base
  belongs_to :sender, class_name: 'User', foreign_key: :sender_id
  belongs_to :reciever, class_name: 'User', foreign_key: :reciever_id

  def reciever_login
    reciever.try(:login)
  end

  def reciever_login=(login)
    self.reciever_id = User.find_by(login: login).id
  end
end
