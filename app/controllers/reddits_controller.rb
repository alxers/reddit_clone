class RedditsController < ApplicationController
  load_and_authorize_resource

  include Voter

  def new
    @reddit = Reddit.new
  end

  def index
    @reddits = Reddit.all
  end

  def create
    @reddit = Reddit.new(reddit_params)
    @reddit.user = current_user
    if @reddit.save
      redirect_to @reddit
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def destroy
    @reddit.destroy
    redirect_to reddits_path
  end

  def resource
    @reddit
  end

  private

    def reddit_params
      params.require(:reddit).permit(:title)
    end

end
