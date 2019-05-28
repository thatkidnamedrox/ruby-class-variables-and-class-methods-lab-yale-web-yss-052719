class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@all = {}

  attr_accessor :name, :artist, :genre

  def intialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all[name]["artist"] = artist
    @@all[name]["genre"] = genre
    @@count += 1
    @@genres.include?(genre) ? nil : @@genres << genre
    @@artists.include?(artist) ? nil : @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @@genre.map do |genre|
      count =
