class FriendsController < ApplicationController

  def new
    @friend = current_user.followers.build
  end

  def create
    @friend = current_user.followers.new(friends_params)
    @friend.save
    redirect_to :back
  end

  private

  def friends_params
    # params.require(:friend).permit
  end
end
