class HomePageController < ApplicationController
  def index
    @articles = Article.all.pluck(:id, :title, :subtitle)
    @recent_matches = SinglesMatch.all
    @players = Player.all
  end
end
