class GenresController < ApplicationController


  get '/genres' do
    erb :genres
  end

  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params[:slug])
    #binding.pry
    erb :'genres/:slug'
  end

end
