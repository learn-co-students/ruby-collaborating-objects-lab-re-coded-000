class Artist
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song_name)
    @songs << song_name
  end

  def songs
    @songs
  end

  def save
    @@all << self

  end
  def self.all
    @@all
  end

  def self.find_or_create_by_name(art_name)
    result =self.all.detect {|artist| artist.name == art_name}
    if result
      result
    else
      new_artist =Artist.new(art_name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each do |song_name|
      puts song_name.name
    end
  end
end
