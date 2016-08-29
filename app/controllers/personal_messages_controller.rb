class PersonalMessagesController < ApplicationController

  def new
    @personal_message = current_user.sent_messages.build
  end

  def create
    @personal_message.user = current_user
    if @personal_message.save
      redirect_to inbox_personal_messages_path
    else
      render 'new'
    end
  end

  def inbox
    @inbox_messages = current_user.recieved_messages
  end

  def sent
    @sent_messages = current_user.sent_messages
  end

  private
    def personal_messages_params
      params.require(:personal_message).permit(:title, :body)
    end
end
