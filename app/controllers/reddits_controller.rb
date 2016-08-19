class RedditsController < ApplicationController

  def new
    @reddit = Reddit.new
  end

  def index
    @reddits = Reddit.all
  end

  def create
    Reddit.create(params[:title])
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

    def reddit_params
      params.require(:reddit).permit(:title)
    end
end
