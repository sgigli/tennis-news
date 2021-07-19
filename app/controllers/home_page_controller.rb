class HomePageController < ApplicationController
  def index
    @articles = Article.order_by_date
    @recent_matches = SinglesMatch.order_by_date
    @atp_players = TennisAssociation.atp&.players
    @wta_players = TennisAssociation.wta&.players
  end
end
