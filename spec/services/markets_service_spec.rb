require 'rails_helper'

RSpec.describe MarketsService, type: :service do
  describe 'Markets Service Instance Methods', :vcr do
    it "#conn, returns a faraday object" do
      service = MarketsService.new

      expect(service.conn).to be_a(Faraday::Connection)
    end

    it '#get_endpoint, returns hash data' do
      url = "/api/v0/markets"

      expect(MarketsService.new.get_endpoint(url)).to be_a(Faraday::Response)
    end

    it '#markets, returns parsed json data' do
      markets = MarketsService.new.markets

      expect(markets).to be_a(Hash)
      expect(markets[:data]).to be_a(Array)
    end
  end
end