
require 'pry'
class Song

	attr_accessor :name, :artist, :genre
	attr_writer :artist_count, :genre_count


	@@artists = []
	@@genres = []
	@@count = 0
	@@artist_count = {}
	@@genre_count = {}

	def initialize(name, artist, genre)
		@name, @artist, @genre = name, artist, genre
		@@count += 1
		self.artists<<artist
		self.genres << genre
	
		add_counts
		add_artist_counts
		
	end

	def add_counts
		!!self.genre_count[genre] ? (self.genre_count[genre] += 1)  :  (self.genre_count[genre]  = 1 	)
	end

	def add_artist_counts
		!!@@artist_count[artist] ? (@@artist_count[artist]+= 1)  :  (@@artist_count[artist]  = 1 	)
	end

	def artists
		@@artists
	end
	def genres
		@@genres
	end
	def count
		@@count
	end
	def genre_count
		@@genre_count
	end
	def self.artist_count
		@@artist_count
	end
	def self.artists
		@@artists.uniq
	end
	def self.genres
		@@genres.uniq
	end
	def self.count
		@@count
	end
	def self.genre_count
		@@genre_count
	end
end


Song.new("Lucifer", "Jay-Z", "rap")