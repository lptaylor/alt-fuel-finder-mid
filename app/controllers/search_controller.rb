class SearchController < ApplicationController
  def index
    @results = ResultsFacade.get_stations(params[:location])
  end
end
