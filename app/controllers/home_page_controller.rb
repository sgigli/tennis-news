class HomePageController < ApplicationController
  def index
    @articles = Article.all.pluck(:id, :title, :subtitle)
    @recent_matches = SinglesMatch.all
    @atp_players = TennisAssociation.atp.players
    @wta_players = TennisAssociation.wta.players
  end
end
