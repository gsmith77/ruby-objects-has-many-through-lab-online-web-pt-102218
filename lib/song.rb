class Song
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, aritst, genre)
    @name = name
    @artist = artist
    @genre = genre
    binding.pry
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  
  

end