require 'rufus-scheduler'

scheduler = Rufus::Scheduler::singleton

scheduler.every '5s' do
  PriceBtc.create!
end