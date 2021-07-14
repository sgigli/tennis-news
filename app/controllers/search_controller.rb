class SearchController < ApplicationController
  def index
    entry = params[:entry].downcase
    @search_facade = SearchFacade.new(entry)
  end
end
