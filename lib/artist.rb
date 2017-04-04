class Artist

attr_accessor :name, :songs
@@all = []
def initialize(name)
  @name = name
  @songs = []
end
def songs
@songs
end
def add_song(song)
  @songs << song
end
def self.all
  @@all
end
def save
  @@all << self
end
def self.find_or_create_by_name(name)
  result = @@all.find {|artist| artist.name == name}
  if result
    return result
  else
    result = Artist.new(name)
    result.save
    return result
  end
end
def print_songs
  songs.each {|song| puts song.name}
end
end
