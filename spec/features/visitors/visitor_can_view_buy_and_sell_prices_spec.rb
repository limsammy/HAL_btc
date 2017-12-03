require 'rails_helper'

RSpec.describe "visitor visits price pages" do
  it "visitor can navigate to price index" do
    price = create(:price_btc)

    visit root_path

    expect(page).to have_content('View Price Index')

    click_on "View Price Index"

    expect(current_path).to eq('/price_btcs')
    expect(page).to have_content("Sell: ")
    expect(page).to have_content("Buy: ")
  end
end