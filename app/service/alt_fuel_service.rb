class AltFuelService

  def conn
  Faraday.new(:url => 'https://developer.nrel.gov/api') do |faraday|
    faraday.headers['x-api-key'] = ENV['NREL_KEY']
    faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
  end

  def get_stations


  end
end
