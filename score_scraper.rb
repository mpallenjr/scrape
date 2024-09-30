require 'curb'
require 'json'

http = Curl.get("https://api-secure.sports.yahoo.com/v1/editorial/s/scoreboard?lang=en-US&region=US&tz=America%2FChicago&ysp_redesign=1&ysp_platform=desktop&game_ids=mlb.g.440929126")
# puts http.body

json_response = JSON.parse(http.body)
puts json_response["service"]["scoreboard"]["games"]["mlb.g.440929126"]["total_away_points"]


def get_cardinals_score(game_id)

end

def get_cardinals_game_id
  
end