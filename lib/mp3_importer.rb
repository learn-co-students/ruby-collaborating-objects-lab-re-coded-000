require 'pry'

class MP3Importer
  attr_accessor :path, :files
  def initialize(path)
    @path=path
    @files=[]
  end

  def files
    # binding.pry
  if @files.empty?
    # binding.pry
  @files = Dir.entries(@path).select {|file| file.end_with?(".mp3")}
  end
  @files
  end

  def import
  self.files.each {|file_name| Song.new_by_filename(file_name)}
  end

end
