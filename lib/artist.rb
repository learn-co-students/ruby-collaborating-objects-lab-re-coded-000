class Artist
attr_accessor :name , :songs
# *********************************
@@all =[]
# *********************************
def initialize(name)
@name = name
@songs =[]
end
# *********************************
def self.all
@@all
end
# *********************************
def songs
@songs
end
# *********************************
def add_song(song)
@songs << song
end
# *********************************
def save
self.class.all << self
end
# *********************************
def print_songs
self.songs.each do |song|
puts song.name
end
end
# *********************************
def self.find_or_create_by_name(name)
result = @@all.detect {|artist| artist.name == name}
if result
result
else
result = Artist.new(name)
result.save
 result
end
end
# *********************************
end
