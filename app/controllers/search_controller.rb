class SearchController < ApplicationController
  def index
    @results = ResultsFacade.get_results(params[:q])
  end
end
