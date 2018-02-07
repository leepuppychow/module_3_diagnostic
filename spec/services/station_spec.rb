require 'rails_helper'

describe Station do
  let(:station) {Station.new({name: "station1",
                              address: "here",
                              fuel_type: "electric",
                              access_times: "everyday",
                              distance: 5
                  })}

  it "exists" do
    expect(station).to be_a Station
  end

  
end
