require 'curb'
require 'json'

http = Curl.get("https://sportsdata.usatoday.com/baseball/mlb/scores?date=2024-09-28&season=2024")
puts http.body
