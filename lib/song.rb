require 'pry'

class Song 

  attr_accessor :name, :artist, :genre

@@count=0

@@genres=[]
@@artists=[]

@@genre_count = {}
@@artist_count = {}

def initialize(name, artist, genre)
@@count +=1
@@genres << genre
@@artists<< artist
@name = name
@artist = artist
@genre = genre
count = @@genres.select{|musics| musics == genre}
@@genre_count[genre] = count.length 
artist_count = @@artists.select{|musics| musics == artist}
@@artist_count[artist] = artist_count.length

#{"rap"=>1}
end

def Song.count
@@count
end

def Song.genres
@@genres.uniq
end

def Song.artists
  @@artists.uniq
end

def Song.genre_count
  @@genre_count
end

def Song.artist_count
  @@artist_count
end

end 

lucifer = Song.new("Lucifer", "Jay-Z", "rap" ) 
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap") 
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop") 
Song.genre_count
