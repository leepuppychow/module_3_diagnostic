require 'rails_helper'

describe StationService do
  let(:station_service) {StationService.new("80203")}

  it "exists" do
    expect(station_service).to be_a StationService
  end

  context "Instance Methods" do
    it "#stations returns all stations" do
      expect(station_service.stations).to be_a Array
      expect(station_service.stations.first).to be_a Station
      expect(station_service.stations.first.name).to be_a String
    end
  end
end
