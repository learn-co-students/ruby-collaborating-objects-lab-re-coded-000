require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all=[]
def initialize(name)
  @name=name
  @songs=[]
  save
end
def add_song(song)
  @songs << song
end
def save
  @@all << self
end
def self.all
  @@all
end
def self.find_or_create_by_name(artist_name)
  # binding.pry
  artist=@@all.find{|a| a.name==artist_name}
  if !artist
    artist=  Artist.new(artist_name)
  end
  artist
end
  def print_songs
    @songs.each do |s|
      puts s.name
    end
end

end
