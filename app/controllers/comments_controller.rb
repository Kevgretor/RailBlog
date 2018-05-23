class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @article.comments.append(@comment)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.article, notice: 'Commento inserito.' }
      else
        flash[:notice] = "Attenzione! E' necessario inserire un commento."
        format.html { render 'articles/show' }
      end
      format.js
    end
  end

  def index
    redirect_to Article.find(params[:article_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
