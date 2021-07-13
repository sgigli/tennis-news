class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.order_by_start_date
  end

  def show
    @tournament = Tournament.find_by_id(params[:id])
  end
end
