class StationService
  attr_reader :zipcode

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def stations
    connection[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  def connection
    get_json(Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?zip=#{zipcode}&radius=6&fuel_type=LPG,ELEC&limit=10&api_key=#{ENV["NREL_API_KEY"]}&format=JSON").body)
  end

  def get_json(url)
    JSON.parse(url, symbolize_names: true)
  end

end
