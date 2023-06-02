class FeedbacksController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.feedbacks.create(comment_params)
    redirect_to article_path(@article)
 end
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.feedbacks.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end
  private
    def comment_params
      params.require(:feedback).permit(:commenter, :body)
    end

end
