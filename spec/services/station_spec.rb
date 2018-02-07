require 'rails_helper'

describe Station do
  let(:station) {Station.new({station_name: "station1",
                              street_address: "here",
                              fuel_type_code: "electric",
                              access_days_time: "everyday",
                              distance: 5
                  })}

  it "exists" do
    expect(station).to be_a Station
  end

  it "has desired attributes" do
    expect(station.name).to eq "station1"
    expect(station.address).to eq "here"
    expect(station.fuel_type).to eq "electric"
    expect(station.access_times).to eq "everyday"
    expect(station.distance).to eq 5
  end
end
