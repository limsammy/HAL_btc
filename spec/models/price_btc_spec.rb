require 'rails_helper'

RSpec.describe PriceBtc, type: :model do
  it "can hit the coinbase api and #get_buy/sell price" do
    price = create(:price_btc)

    expect(price.get_sell_price.class).to be_a(Float)
    expect(price.get_buy_price.class).to be_a(Float)
  end
end
