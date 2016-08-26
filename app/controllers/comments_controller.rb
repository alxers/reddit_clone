class CommentsController < ApplicationController
  load_and_authorize_resource

  def create
    find_post
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to post_path(@post)
  end

  def edit
  end

  def destroy
    find_post
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
end
