class Song
  
  @@count = 0
  @@artists =[]
  @@genres=[]
  
  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  
  def initialize(name, artist, genre)
    @@count+=1
    @name = name
    @artist=artist
    @genre=genre
    @@artists+=[artist] 
    @@genres+=[genre] 
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.artist_count
    get_counts(@@artists)
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    get_counts(@@genres)
  end
  
end

def get_counts(arr)
  r={}
  arr.each do |el| 
    r[el]=0 unless r.keys.include?(el)
    r[el]+=1
  end
  r
end