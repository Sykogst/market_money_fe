class MarketsFacade
  def markets(limit)
    service = MarketsService.new
    results = service.markets
    limited_data = results[:data].first(limit)

    limited_data.map do |data|
      Market.new(data)
    end
  end
end