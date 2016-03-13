class ShowsController < ApplicationController
  def index
    response = HTTParty.get('http://epguides.frecar.no/show/')
    @shows = JSON.parse(response.body)
  end

  def show
    @id = params["id"]
    response = HTTParty.get("http://epguides.frecar.no/show/#{@id}")
    @seasons = JSON.parse(response.body)
  end
end
