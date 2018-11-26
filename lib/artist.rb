require "pry"

class Artist
  
  attr_accessor :name
  
  @@all_artists = []
  
   def initialize(name)
    @name = name
    @@all_artists << self
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
 def genres
    songs.map(&:genre)
  end
  
   def self.all
    @@all_artists
  end
  
end