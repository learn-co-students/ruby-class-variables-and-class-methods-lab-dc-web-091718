require "pry"
class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count

    genre_hash = {}

    @@genres.each do |genre|

      # if genre_hash.has_key?(genre)
      #
      #   genre_hash[genre] += 1
      # else
      #
      #   genre_hash[genre] = 1
      # better metod
      #vvvvvvvvvvvvvvvvvvvvvvv
      genre_hash[genre] ? genre_hash[genre] = genre_hash[genre]+1 : genre_hash[genre] = 1
      end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}

    @@artists.each do |artist|
      artist_hash[artist] ? artist_hash[artist] = artist_hash[artist]+=1 : artist_hash[artist]=1
    end
    artist_hash
  end



end
