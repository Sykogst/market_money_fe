require 'rails_helper'

RSpec.describe MarketsFacade, type: :facade do
  describe 'Market Facade Instance Methods', :vcr do
    before(:each) do
      @facade = MarketsFacade.new  
    end

    it "exists" do
      expect(@facade).to be_a(MarketsFacade)
    end

    it '#markets(limit)' do
      results = @facade.markets(3)
      expect(results).to be_a(Array)
      expect(results.count).to eq(3)

      results.each do |result|
        expect(result).to be_a(Market)
        expect(result).to respond_to(:id)
        expect(result).to respond_to(:name)
        expect(result).to respond_to(:city)
        expect(result).to respond_to(:state)
      end
    end
  end
end
