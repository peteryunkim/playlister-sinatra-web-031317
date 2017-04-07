require_relative '../../config/environment'
# Be able to create a new song
# Genres should be presented as checkboxes
# Be able to enter the Artist's name in a text field (only one Artist per song.)
# /songs/:slug/edit
# Be able to change everything about a song, including the genres associated with it and its artist.
# Think about the custom writer or writers you may need to write to make these features work.
class SongsController < ApplicationController

  get '/songs' do
      erb :"songs/index"
  end

  #CREATE
  get '/songs/new' do
    erb :'songs/new'
  end
  post '/songs/' do
    # binding.pry
    @song = Song.create(params[:song])
    # binding.pry
    if !params[:artist][:name].empty?
      @song.artist << Artist.find_or_create_by(params["artist"])
    end
    if !params[:genre]["name"].empty?
      @song.genres << Genre.create(name: params["genre"])
    end
    @song.save
    binding.pry
    redirect to "/songs/#{@song.slug}"
  end

  #READ
  get '/songs/:slug' do
    # binding.pry
    @song = Song.find_by_slug(params[:slug])
    # binding.pry
    erb :"songs/show"
  end

  #UPDATE
  get '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:id])
    erb :"songs/edit"
  end

end
# order of song slug n slugs new
# "that-one-with-the-guitar"
