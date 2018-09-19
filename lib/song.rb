class Song

attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists =[]
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    artist = []

    @@artists.each do |element|
      if !artist.include?(element)
        artist << element
      end
    end

    artist
  end

  def self.genres
    genre = []

    @@genres.each do |element|
      if !genre.include?(element)
        genre << element
      end
    end

    genre
  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |element|
      if genre_hash.has_key?(element)
        genre_hash[element] += 1
      else
        genre_hash[element] = 1
      end
    end

    genre_hash
  end

  def self.artist_count
    artists_hash = {}

    @@artists.each do |element|
      if artists_hash.has_key?(element)
        artists_hash[element] += 1
      else
        artists_hash[element] = 1
      end
    end

    artists_hash
  end

end















# Song
#   #new
#     takes in three arguments: a name, artist and genre (FAILED - 1)
#   #name
#     has a name (FAILED - 2)
#   #artist
#     has an artist (FAILED - 3)
#   #genre
#     has a genre (FAILED - 4)
#   class variables
#     has a class variable, @@count (FAILED - 5)
#     has a class variable, @@artists, that contains all of the artists of existing songs (FAILED - 6)
#     has a class variable, @@genres, that contains all of the genres of existing songs (FAILED - 7)
#   .count
#     is a class method that returns that number of songs created (FAILED - 8)
#   .artists
#     is a class method that returns a unique array of artists of existing songs (FAILED - 9)
#   .genres
#     is a class method that returns a unique array of genres of existing songs (FAILED - 10)
#   .genre_count
#     is a class method that returns a hash of genres and the number of songs that have those genres (FAILED - 11)
#   .artist_count
#     is a class method that returns a hash of artists and the number of songs that have those artists (FAILED - 12)
