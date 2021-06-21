class PlayersController < ApplicationController
  def index
    @atp_players = TennisAssociation.atp.players
    @wta_players = TennisAssociation.wta.players
  end
end
