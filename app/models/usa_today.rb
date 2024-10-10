class UsaToday < ApplicationRecord
  BASEBALL_URL = "https://sportsdata.usatoday.com/baseball/mlb/scores?"
  def make_request(url)
    HTTP.get(url)
  end

  def parse_html(html)
    Nokogiri::HTML.parse(html)
  end

  def get_past_baseball_scores(number_of)
    date = "date=#{Date.current - number_of.days}&season=#{Date.current.year}"
    url = BASEBALL_URL + date
    make_request(url)
  end
end