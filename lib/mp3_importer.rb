require 'pry'
class MP3Importer 

    attr_accessor :path

    def initialize(path)
        @path = path 
    end 

    def files
    Dir.glob("#{path}/*mp3").map{ |f| f.gsub("#{path}/", "") }
    end 

    def import 
        files.each { |f| Song.new_by_filename(f)}
    end 
end 

