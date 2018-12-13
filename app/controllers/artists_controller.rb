require 'pry'
class ArtistsController < ApplicationController


  get '/artists' do
    erb :artists
  end

  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    #binding.pry
    erb :'artists/:slug'
  end

end
