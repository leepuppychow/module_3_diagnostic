class SearchController < ApplicationController

  def index
    connection = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?zip=#{zipcode}&radius=6&fuel_type=LPG,ELEC&limit=10&api_key=#{ENV["NREL_API_KEY"]}&format=JSON")
    response = JSON.parse(connection.body, symbolize_names: true)

    binding.pry
  end


  private

    def zipcode
      params.permit("zipcode")["zipcode"]
    end

end
