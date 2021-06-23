class HomePageController < ApplicationController
  def index
    @articles = Article.all.pluck(:id, :title, :subtitle)
    @recent_matches = SinglesMatch.all
  end
end
