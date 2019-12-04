class CommentsController < ApplicationController
  
  # Authentication to prevent deletion of comments, except for admin.
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy
  def create
    # Find article and make comment variable ready. Send and redirect.
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
