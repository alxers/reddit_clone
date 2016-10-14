class PersonalMessagesController < ApplicationController

  def new
    @personal_message = current_user.sent_messages.build
  end

  def create
    @personal_message = current_user.sent_messages.new(personal_messages_params)
    if @personal_message.save
      redirect_to inbox_personal_messages_path
    else
      render 'new'
    end
  end

  def inbox
    @inbox_messages = current_user.recieved_messages
    message_id = params[:id]
    mark_as_read(message_id) if message_id
  end

  def sent
    @sent_messages = current_user.sent_messages
  end

  private
  
  def personal_messages_params
    params.require(:personal_message).permit(:reciever_login, :title, :body)
  end

  def mark_as_read(id)
    PersonalMessage.find(id).update_attribute(:read, true)
  end
end
