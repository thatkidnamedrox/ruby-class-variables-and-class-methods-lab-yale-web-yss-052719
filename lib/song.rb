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
    @@genre.map do |genre|
      count = self.all.count do |song, _|
        self.all[song]["genre"] == genre
      end
      puts count
    end
  end

end
