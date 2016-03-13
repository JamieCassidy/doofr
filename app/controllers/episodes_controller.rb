class EpisodesController < ApplicationController
  def index
  end

  def show
    @episode_id = params["id"].match(/s(\d+)e(\d+)/)
    @episode_season = @episode_id[1]
    @episode_number = @episode_id[2]
    response = HTTParty.get("http://epguides.frecar.no/show/#{params["show_id"]}/#{@episode_season}/#{@episode_number}")
    @episode = JSON.parse(response.body)
  end
end
