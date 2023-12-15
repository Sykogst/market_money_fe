require 'rails_helper'

RSpec.describe 'Markets index', type: :feature do
  describe 'User visits market index "/markets"', :vcr do
    before(:each) do
      visit "/markets"
    end

    it 'They see info for 10 markets: Name, City, State' do
      expect(page).to have_content('Markets')
      expect(page).to have_selector('tbody tr', count: 10)

      within "#market-322458" do # Just gonna use hard coded data and check a few, look into VCR.current_cassette?
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content("Washington")
        expect(page).to have_content("District of Columbia")
      end

      within "#market-322474" do
        expect(page).to have_content("2nd Street Farmers' Market")
        expect(page).to have_content("Amherst")
        expect(page).to have_content("Virginia")
      end

      within "#market-322554" do
        expect(page).to have_content("Alabama Gulf Coast Market")
        expect(page).to have_content("Gulf Shores")
        expect(page).to have_content("Alabama")
      end
    end

    it 'They click button "More Info" and are directed to Market show page "/markets/:id"' do
      expect(page).to have_content('More Info', count: 10)

      within "#market-322458" do
        click_link 'More Info'
        expect(current_path).to eq("/markets/322458")
      end
    end
  end
end