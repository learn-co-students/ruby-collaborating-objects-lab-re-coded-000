class Song
  attr_accessor :artist, :name
  def initialize(name)
    @name=name
  end
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    song = self.new(array[1])
    song.artist = Artist.find_or_create_by_name(array[0])
    song.artist.songs << song
    song
  end
end
