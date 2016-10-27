class Artist
  attr_accessor :name, :songs
  @@all =[]
  def initialize(name)
    @name = name
    @songs =[]
  end
  def self.all
    @@all
  end
  def songs
    @songs
  end
  def add_song(song)  #colaborating
    @songs << song #song is instance
  end
def save
  self.class.all << self  #self refers to the instance
end

def self.find_or_create_by_name(art_name)
  result = self.all.detect {|artist| artist.name == art_name}
  if result then
    result
  else
    new_art = self.new(art_name)
    new_art.save
    new_art
  end
end
def print_songs
  self.songs.each do |song|
    puts song.name
  end
end
end
