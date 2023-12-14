require 'rails_helper'

RSpec.describe 'Markets index', type: :feature do
  describe 'User visits market index "/markets"' do
    before(:each) do
      visit "/markets"
    end

    it 'They see info for 10 markets: Name, City, State' do
      expect(page).to have_content('Market')
    end

    xit 'They click button "More Info" and are directed to Market show page "/markets/:id"' do
      click_link "More Info"
      expect(current_path).to eq()
    end
  end
end