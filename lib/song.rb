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

    @@all[name]["artist"] = artist
    @@all[name]["genre"] = genre

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

Song.new("hit me baby one more time", "Brittany Spears", "pop")
