require 'coinbase/wallet'

class PriceBtc < ApplicationRecord
  before_save :save_prices

  def save_prices
    client = Coinbase::Wallet::Client.new(api_key: ENV["COINBASE_KEY"],
                                           api_secret: ENV["COINBASE_SECRET"])
    self.buy = self.class.get_buy_price(client)
    self.sell = self.class.get_sell_price(client)
    self.spot = self.class.get_spot_price(client)
  end

  def self.get_buy_price(client)
    binding.pry
    client.buy_price({currency_pair: 'BTC-USD'})["amount"].to_f
  end

  def self.get_sell_price(client)
    client.sell_price({currency_pair: 'BTC-USD'})["amount"].to_f
  end

  def self.get_spot_price(client)
    client.spot_price({currency_pair: 'BTC-USD'})["amount"].to_f
  end

end
