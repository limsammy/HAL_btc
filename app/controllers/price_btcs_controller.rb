class PriceBtcsController < ApplicationController
  def index
    @prices = PriceBtc.all
  end
end