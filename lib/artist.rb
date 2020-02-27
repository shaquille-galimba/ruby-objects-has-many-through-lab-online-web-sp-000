class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
    song.artist = self
  end

  def songs
    Song.all.select {|s| s.artist == self}
  end

  def genres
    songs.map {|s| s.genre}
  end
end
