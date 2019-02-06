class SearchController < ApplicationController
  def index
    @results = ResultsFacade.get_stations(params[:q])
  end
end
