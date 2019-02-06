class SearchController < ApplicationController
  def index
    @results = ResultsFacade.new
  end
end
