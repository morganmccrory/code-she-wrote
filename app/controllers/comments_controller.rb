class CommentsController < ApplicationController
  respond_to :html, :xml, :json

  def create
    comment = Comment.create(comment_params)
    render :json => comment
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :author, :post_id)
  end
end