class ResultsFacade
  def self.get_results(search_location)
    search = AltFuelService.new
    search_results = search.get_stations(search_location)
    binding.pry
    search_results.map do |result_attributes|
      Result.new(result_attributes)
    end
  end
end
