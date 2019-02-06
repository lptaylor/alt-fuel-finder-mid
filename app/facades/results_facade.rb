class ResultsFacade
  def self.get_stations(search_location)
    search = AltFuelService.new
    search.get_stations(search_location)
  end
end
