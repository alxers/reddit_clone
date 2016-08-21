class PostsController < ApplicationController

  def create
    find_reddit
    @post = @reddit.posts.create(posts_params)
    redirect_to reddit_path(@reddit)
  end

  def new
    find_reddit
    @post = @reddit.posts.build
  end

  def show
  end

  private
    def posts_params
      params.require(:post).permit(:title, :body)
    end

    def find_reddit
      @reddit = Reddit.find(params[:reddit_id])
    end
end
