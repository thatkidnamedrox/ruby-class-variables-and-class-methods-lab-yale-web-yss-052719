class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@all = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all[name] = {}
    @@all[name]["artist"] = artist
    @@all[name]["genre"] = genre
    @@count += 1
    @@genres << genre
    @@artists << artist

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.all
    @@all
  end

  def self.genre_count
    genre_count = {}
    @@genres.uniq.map do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
  end

  def self.artist_count
  end

end
