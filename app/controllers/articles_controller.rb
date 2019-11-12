class ArticlesController < ApplicationController

  def index
    @articles = Article.includes(:category).all
  end

  def new
    @article = Article.new
  end

  def create
    @new_article = Article.create(article_params)
    if !@new_article.errors
     redirect_to '/articles'
    else
      redirect_to '/'
    end
  end


  private

  def article_params
    params.require(:article).permit(
      :title, 
      :body,
      :category_id
    )
  end
end
