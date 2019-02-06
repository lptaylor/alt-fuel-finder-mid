class Result
  attr_reader :name, :distance, :address, :fuel_type, :access_times
  def initialize(attributes)
    @name = attributes[:station_name]
    @distance = attributes[:distance]
    @city = attributes[:city]
    @state = attributes[:state]
    @zipcode = attributes[:zip]
    @street_address = attributes[:street_address]
    @fuel_type = attributes[:fuel_type_code]
    @access_times = attributes[:access_days_times]
  end

  def address
    "#{@street_address} #{@city}, #{@state} #{@zipcode}"
  end
end
