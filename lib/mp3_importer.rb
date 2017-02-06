require 'pry'
class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path=path
  end
  def files
    Dir["#{@path}/*.mp3"].map{|file| file.gsub("#{@path}/","")}
  end
  def import
    files.each {|i| Song.new_by_filename(i)}
  end
end
