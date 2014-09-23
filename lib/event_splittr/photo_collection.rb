require 'pathname'
require 'fileutils'

module EventSplittr
  class PhotoCollection
    def initialize(paths)
      @photos = paths.select {|path| File.extname(path).downcase == ".jpg"}.map {|path| Photo.new(path)}
    end

    def split(destination_dir)      
      @photos.each do |photo|
        FileUtils.mkdir_p("#{destination_dir}/#{photo.project_name}")
        FileUtils.mv(photo.path, photo.destination_path(destination_dir))
        puts "Moved: #{photo.path} to #{photo.destination_path(destination_dir)}"
      end
      puts "-> Moved #{@photos.size} photos."
    end

    def split_dry_run(destination_dir)
      @photos.each do |photo|
        puts "Will move: #{photo.path} to #{photo.destination_path(destination_dir)}"
      end
    end
  end 
end