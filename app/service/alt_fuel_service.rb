class AltFuelService

  def conn
    Faraday.new(:url => 'https://developer.nrel.gov') do |faraday|
      faraday.headers['x-api-key'] = ENV['NREL_KEY']
      faraday.adapter  Faraday.default_adapter
    end
  end

  def get_stations(search_location)
   response = conn.get do |req|
     req.url '/api/alt-fuel-stations/v1/nearest.json'
     req.params['limit'] = 10
     req.params['radius'] = 6.0
     req.params['fuel_type'] = 'LPG,ELEC'
     req.params['location'] = search_location
   end
   JSON.parse(response.body, symbolize_names: true)[:station_counts]
  end
end
