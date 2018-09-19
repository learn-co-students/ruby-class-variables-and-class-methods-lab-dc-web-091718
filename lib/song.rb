class Song
	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
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
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		count_inst(@@genres)
	end

	def self.artist_count
		count_inst(@@artists)
	end


	#returns a hash where keys are unique elements of arr, and values are counts of that element 
	def self.count_inst(arr)
		hash = {}
		keys = arr.uniq
		keys.each do |key|
			hash[key] = arr.count(key)
		end
		hash
	end

	# makes the helper class method count_inst private, as it should not be used on Song

	private_class_method :count_inst


	# gotta love when you implement an array function only to find its already in Ruby.Array
	# 									¯\_(ツ)_/¯
	def get_unique(arr)
		unique = []
		arr.each do |element|
			if !unique.include?(element)
				unique << element
			end
		end
		unique
	end


end