require "rails_helper"

RSpec.describe Market do
  it "exists" do
    data = {id: "322458",
            type: "market",
            attributes: {
                name: "14&U Farmers' Market",
                street: "1400 U Street NW ",
                city: "Washington",
                county: "District of Columbia",
                state: "District of Columbia",
                zip: "20009",
                lat: "38.9169984",
                lon: "-77.0320505",
                vendor_count: 1
            },
            relationships: {
                market_vendors: {
                    data: [
                        {
                            id: "422361",
                            type: "market_vendor"
                        }
                    ]
                },
                vendors: {
                    data: [
                        {
                            id: "55823",
                            type: "vendor"
                        }
                    ]
                }
            }
          }

    market = Market.new(data)

    expect(market).to be_a(Market)
    expect(market.id).to eq("322458")
    expect(market.name).to eq("14&U Farmers' Market")
    expect(market.city).to eq("Washington")
    expect(market.state).to eq("District of Columbia")
  end
end