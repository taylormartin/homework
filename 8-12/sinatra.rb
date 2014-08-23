require 'sinatra'
require './lib/spotify'

get '/toptracks' do
  @tracks = Spotify.top_tracks_for
  haml :top
end
