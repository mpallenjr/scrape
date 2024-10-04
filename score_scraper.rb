require 'curb'
require 'json'
require 'nokogiri'

http = Curl.get("https://sportsdata.usatoday.com/baseball/mlb/scores?date=2024-10-02&season=2024")
# puts http.body

html_parsed = Nokogiri::HTML.parse(http)

puts html_parsed.teams
