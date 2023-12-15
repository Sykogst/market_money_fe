class MarketsController < ApplicationController
  def index
    @markets_facade = MarketsFacade.new.markets(10)
  end

  def show
    
  end
end