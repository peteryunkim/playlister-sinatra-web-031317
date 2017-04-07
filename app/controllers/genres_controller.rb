require_relative '../../config/environment'
class GenresController < ApplicationController

  get '/genres' do
    erb :"genres/index"
  end

  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params[:slug])
    # binding.pry
    erb :'genres/show'
  end

end
