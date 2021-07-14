class ArticlesController < ApplicationController
  def index
    @pagy, @articles = pagy(Article.order_by_date, items: 10)
  end

  def show
    @article = Article.find_by_id(params[:id])
  end
end
