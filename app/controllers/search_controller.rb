class SearchController < ApplicationController

  def index
    @stations = StationService.new(zipcode).stations
  end


  private

    def zipcode
      params.permit("zipcode")["zipcode"]
    end

end
