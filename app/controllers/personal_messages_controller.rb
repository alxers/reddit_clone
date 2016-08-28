class PersonalMessagesController < ApplicationController

  def index
  end

  private
    def personal_messages_params
      params.require(:personal_message).permit(:title, :body)
    end
end
