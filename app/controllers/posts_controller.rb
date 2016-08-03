class PostsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def edit
  end

  def upvote
    post = Post.find(params[:post_id])
    post.increment!(:likes)

    render action: "index"
  end

  def downvote
    post = Post.find(params[:post_id])
    post.decrement!(:likes)

    render action: "index"
  end

  private

  def post_params
    params.require(:post).permit(:likes)
  end
end
