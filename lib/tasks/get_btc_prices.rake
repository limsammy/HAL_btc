namespace :get_btc_prices do
  task save: :environment do
    price = PriceBtc.new
    price.save_prices
    price.save!
    puts "Saved price index at time: #{price.created_at}"
  end
end
