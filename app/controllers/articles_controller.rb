class ArticlesController < ApplicationController
  def index
    @articles = Article.all.pluck(:id, :title, :subtitle)
  end

  def show
    @article = Article.find(params[:id])
  end
end
