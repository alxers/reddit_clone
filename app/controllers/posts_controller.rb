class PostsController < ApplicationController

  def create
    find_reddit
    @post = @reddit.posts.build(post_params)
    @post.user = current_user
    if @post.save
      redirect_to reddit_path(@reddit)
    else
      render 'new'
    end
  end

  def new
    find_reddit
    @post = @reddit.posts.build
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  def edit
  end

  def destroy
    find_reddit
    @post = @reddit.posts.find(params[:id])
    @post.destroy
    redirect_to reddit_path(@reddit)
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

    def find_reddit
      @reddit = Reddit.find(params[:reddit_id])
    end
end
