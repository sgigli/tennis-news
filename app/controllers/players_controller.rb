class PlayersController < ApplicationController
  def index
    @pagy, @atp_players = pagy(TennisAssociation.atp.players, items: 10)
    @pagy, @wta_players = pagy(TennisAssociation.wta.players, items: 10)
  end

  def show
    @player = Player.find_by_id(params[:id])
  end
end
