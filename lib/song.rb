class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre
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

  def self.genres
     @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count_hsh = Hash.new(0)
    @@genres.each do |genre|
      genre_count_hsh[genre] += 1
    end
    genre_count_hsh
  end

  def self.artist_count
    artist_count_hsh = Hash.new(0)
    @@artists.each do |artist|
      artist_count_hsh[artist] += 1
    end
    artist_count_hsh
  end











end