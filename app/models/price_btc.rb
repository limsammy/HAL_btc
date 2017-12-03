require 'coinbase/wallet'

class PriceBtc < ApplicationRecord
  before_save :save_prices

  def self.get_buy_price
    client = Coinbase::Wallet::Client.new(api_key: ENV["COINBASE_KEY"],
              api_secret: ENV['COINBASE_SECRET'])
    client.buy_price({currency_pair: 'BTC-USD'})["amount"].to_f
  end

  def self.get_sell_price
    client = Coinbase::Wallet::Client.new(api_key: ENV["COINBASE_KEY"],
              api_secret: ENV['COINBASE_SECRET'])
    client.sell_price({currency_pair: 'BTC-USD'})["amount"].to_f
  end

  def save_prices
    self.buy = PriceBtc.get_buy_price
    self.sell = PriceBtc.get_sell_price
  end
end
