class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name = name
    @songs=[]
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end
def self.all
  @@all
end
  def save
    self.class.all<<self
end
def self.find_or_create_by_name(name)
  art_ = @@all.detect {|artist| artist.name == name}
if art_
  art_
else
  art_ = Artist.new(name)
  art_.save
  art_
end
end
def print_songs
self.songs.each do |song|
puts song.name
end
end
end
