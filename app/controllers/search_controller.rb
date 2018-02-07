class SearchController < ApplicationController

  def index
    binding.pry
  end


  private

    def zipcode
      params.permit("zipcode")["zipcode"]
    end

end
