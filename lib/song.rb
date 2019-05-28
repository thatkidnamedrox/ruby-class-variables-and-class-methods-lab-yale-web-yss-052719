class Song

  @@count = 0
  @@genres = []

  attr_accessor :name, :artist, :genre
  
  def intialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@genres.include?(genre) ? nil : @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres