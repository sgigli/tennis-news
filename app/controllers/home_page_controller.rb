class HomePageController < ApplicationController
  def index
    @articles = Article.all.pluck(:id, :title, :subtitle)
  end
end
