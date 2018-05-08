class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@count += 1 
    @@genres << genre 
    @@artists << artist
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.artist 
    @@artists.uniq
  end 
  
  def genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] ||= 0 
      genre_hash[genre] += 1 
    end 
    genre_hash
  end
end 