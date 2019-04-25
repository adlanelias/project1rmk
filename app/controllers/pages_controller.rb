class PagesController < ApplicationController
  def home

    @topscorers = Unirest.get "https://heisenbug-premier-league-live-scores-v1.p.rapidapi.com/api/premierleague/table/scorers",
  headers:{ "X-RapidAPI-Host" => "heisenbug-premier-league-live-scores-v1.p.rapidapi.com", "X-RapidAPI-Key" => "fef08f07bemsh93805ff9d47f185p1efb84jsn14450e134e60" }
    @topscorer1 = @topscorers.body["scorers"][0]["playerName"]
    @topscorer1goals = @topscorers.body["scorers"][0]["goals"]
    @topscorer2 = @topscorers.body["scorers"][1]["playerName"]
    @topscorer2goals = @topscorers.body["scorers"][1]["goals"]
    @topscorer3 = @topscorers.body["scorers"][2]["playerName"]
    @topscorer3goals = @topscorers.body["scorers"][2]["goals"]
    @topscorer4 = @topscorers.body["scorers"][3]["playerName"]
    @topscorer4goals = @topscorers.body["scorers"][3]["goals"]
    @topscorer5 = @topscorers.body["scorers"][4]["playerName"]
    @topscorer5goals = @topscorers.body["scorers"][4]["goals"]

  end
end
