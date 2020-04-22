require 'pry'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super #.initialize method to use the code in the Memorable::InstanceMethods module's .initialize method and also to use any additional code in the Artist's .initialize method
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
