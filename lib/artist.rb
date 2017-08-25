class Artist

	attr_accessor :name
	attr_reader :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def save
		@@all.push( self)
	end

	def add_song(song)
		@songs.push(song)
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

	def self.all
		@@all
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

end
