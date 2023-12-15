class MarketsService < ApplicationService
  def conn
    Faraday.new(url:'http://localhost:3000/')
  end

  def get_endpoint(url)
    conn.get(url)
  end

  def markets
    json_parse(get_endpoint("/api/v0/markets"))
  end
end