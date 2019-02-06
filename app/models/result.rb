class Result
  def initialize(attributes)
    @name = attributes[:name]
    @distance = attributes[:distance]
    @address = attributes[:address]
    @fuel_type = attributes[:fuel_type]
    @access_times = attributes[:access_times]
  end
end
