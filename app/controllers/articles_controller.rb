class ArticlesController < ApplicationController
  before_action :check_user_session, only: [:new, :edit, :create, :delete]
  def new
    @article = Article.new
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Articolo inserito'
    else
      flash[:notice] = "Attenzione! E' necessario compilare tutti i campi."
      render 'new'
    end
  end
  def index
    @articles = Article.all
  end



  private
  def article_params
    params.require(:article).permit(:title, :article)
  end

  def check_user_session
    unless session[:user_id]
      flash[:notice] = 'Devi fare il login per continuare'
      redirect_to :login
    end
  end

end
