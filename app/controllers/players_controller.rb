class PlayersController < ApplicationController
  def index
    @atp_players = TennisAssociation.atp.players
    @wta_players = TennisAssociation.wta.players
  end

  def show
    @player = Player.find(params[:id])
  end
end
