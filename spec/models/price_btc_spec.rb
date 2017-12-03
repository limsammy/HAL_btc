require 'rails_helper'

RSpec.describe PriceBtc, type: :model do
  it "can hit the coinbase api and #get_buy/sell price" do
    price = create(:price_btc)

    expect(price.sell.class).to eq(Float)
    expect(price.buy.class).to eq(Float)
  end
end
