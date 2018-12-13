class SongsController < ApplicationController


  get '/songs' do
    erb :songs
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    #binding.pry
    erb :"/songs/:slug"
  end

end
