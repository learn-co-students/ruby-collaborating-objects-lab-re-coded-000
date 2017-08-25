class Song
attr_accessor :name , :artist
# ***************************************
def initialize(name)
@name = name
end
# ***************************************
def self.new_by_filename(filename)
arr = filename.split(' - ')
song = Song.new(arr[1])
song.artist = Artist.find_or_create_by_name(arr[0])
song.artist.songs << song
song
end
# ***************************************

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
