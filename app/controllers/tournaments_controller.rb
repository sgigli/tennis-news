class TournamentsController < ApplicationController
  def index
    @pagy, @tournaments = pagy(Tournament.order_by_start_date, items: 10)
  end

  def show
    @tournament = Tournament.find_by_id(params[:id])
  end
end
