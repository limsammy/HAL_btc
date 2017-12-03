require 'coinbase/wallet'

class PriceBtc < ApplicationRecord
  def initialize
    client = Coinbase::Wallet::Client.new(api_key: ENV["COINBASE_KEY"],
      api_secret: ENV[COINBASE_SECRET])
  end

  def self.get_buy_price
    
  end

  def self.get_sell_price
    
  end
end
