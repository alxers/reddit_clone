class RedditsController < ApplicationController
  load_and_authorize_resource

  def new
    @reddit = Reddit.new
  end

  def index
    @reddits = Reddit.all
  end

  def create
    @reddit = Reddit.new(reddit_params)
    if @reddit
      redirect_to @reddit
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @reddit = Reddit.find(params[:id])
  end

  def destroy
  end

  private

    def reddit_params
      params.require(:reddit).permit(:title)
    end
end
