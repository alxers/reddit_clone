class RedditsController < ApplicationController
  load_and_authorize_resource

  before_action :find_reddit, only: [:show, :destroy]

  def new
    @reddit = Reddit.new
  end

  def index
    @reddits = Reddit.all
  end

  def create
    @reddit = Reddit.new(reddit_params)
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

  private

    def reddit_params
      params.require(:reddit).permit(:title)
    end

    def find_reddit
      @reddit = Reddit.find(params[:id])
    end
end
