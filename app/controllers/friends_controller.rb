class FriendsController < ApplicationController

  def new
    @friend = current_user.followers.build
  end

  def create
    @friend = current_user.followers.new(friends_params)
  end
end
