require 'httparty'
require 'pry'

class Spotify
  include HTTParty
  base_uri 'https://api.spotify.com'

  def self.top_tracks_for
    response = get "/v1/artists/4LhV33vJvXmFGSM3m5RzUR/top-tracks?country=US"
    #james simplified version of the code I wrote
    @tracks = respose['tracks'].first(10).map do |h|
      Track.new(h['name'], h['album']['name'], h['external_urls']['spotify'])
    end
  end

end

class Track
  attr_reader :name, :album, :playurl
  def initialize(name, album, playurl)
    @name = name
    @album = album
    @playurl = playurl
  end
end
