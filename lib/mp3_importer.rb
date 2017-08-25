require 'pry'
class MP3Importer
  attr_accessor :path
    def initialize(path)
      @path=path
    end
    def files
      Dir["#{path}/*.mp3"].map do |r|
        r.gsub("#{path}/","")

      end
    end
def import
  files.each do |f|
    Song.new_by_filename(f)
  end
end
end
