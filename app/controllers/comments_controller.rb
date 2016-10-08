class CommentsController < ApplicationController
  load_and_authorize_resource

  include Voter

  before_action :find_post, only: [:create, :destroy]

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to post_path(@post)
  end

  def edit
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  def resource
    @comment
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
end
