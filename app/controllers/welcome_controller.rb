class WelcomeController < ApplicationController
  def index
    @comments = Comment.last_ten
    @articles = Article.last_ten
  end
end
