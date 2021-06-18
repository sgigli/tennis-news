class HomePageController < ApplicationController
  def index
    @articles = Article.all.pluck(:title, :subtitle)
  end
end
