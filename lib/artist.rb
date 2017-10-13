  require 'pry'

class Artist

  attr_accessor :name

  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    self.songs << song_obj
    song_obj.artist = self
  end

  def genres
    self.songs.collect { |song| song.genre }
  end

end
