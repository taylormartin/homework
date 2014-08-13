require 'httparty'
require 'pry'

class Spotify
  include HTTParty
  base_uri 'https://api.spotify.com'

  def self.top_tracks_for
    response = get "/v1/artists/4LhV33vJvXmFGSM3m5RzUR/top-tracks?country=US"
    @tracks = []
    (0..9).each do |x|
      name = response['tracks'][x]['name']
      album = response['tracks'][x]['album']['name']
      playurl = response['tracks'][x]['external_urls']['spotify']
      @track = Track.new(name, album, playurl)
      @tracks << @track
    end
    return @tracks
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
