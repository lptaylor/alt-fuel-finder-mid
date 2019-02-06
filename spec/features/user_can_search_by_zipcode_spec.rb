require 'rails_helper'

describe 'A User' do
  before(:each) do
    VCR.use_cassette('api_search') do
      visit '/'
      fill_in 'q', with: '80203'
      click_on "Locate"
    end
  end
  it 'takes me to the path search' do
    expect current_path.to eq('/search')
  end
  # As a user
  # When I visit "/"
  # And I fill in the search form with 80203 (Note: Use the existing search form)
  # And I click "Locate"
  # Then I should be on page "/search"

  xit 'shows list fo 10 stations within 6 miles sorted by distance' do
    visit '/'

    fill_in search_form with: '80203'
    click_on "Locate"

    assert_selector('.stations', count: 10)
  end
  # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
  xit 'stations should only be Electric and Propane' do

  end
  # And the stations should be limited to Electric and Propane
  xit 'each station should have attributes' do

  end
  # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
end
