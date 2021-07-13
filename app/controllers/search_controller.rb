class SearchController < ApplicationController
  def index
    entry = params[:entry].downcase
    @results_hash = Search.new.call(entry)
  end
end
