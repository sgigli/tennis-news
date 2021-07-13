class ArticlesController < ApplicationController
  def index
    @articles = Article.order_by_date
  end

  def show
    @article = Article.find_by_id(params[:id])
  end
end
