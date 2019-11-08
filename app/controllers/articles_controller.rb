class ArticlesController < ApplicationController

    def index
        @articles = Article.includes(:category)
    end

    def new
        @article = Article.new
    end

    def create
        @new_article = Article.new(article_params)
        @new_article.category_id = params[:article][:category_id]
            if @new_article.save
             redirect_to '/articles'
            else
                redirect_to '/'
            end
    end


    private

        def article_params
            params.require(:article).permit(:title, :body)
        end
end
