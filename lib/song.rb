class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename)
    name = []
    name = filename.split('-')
    name = name.collect {|part| part.strip}
    song = Song.new(name)
    artist = Artist.find_or_create_by_name(name)
    song.artist = artist
    artist.add_song(song)
    song
  end

end
