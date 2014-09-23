require 'exifr'

module EventSplittr
  class Photo
    attr_reader :path 

    def initialize(path)
      @photo = EXIFR::JPEG.new(path)
      @path = path
    end

    def destination_path(destination_dir)
      "#{destination_dir}/#{project_name}/#{Pathname.new(path).basename}"
    end

    def project_name
      time_taken.strftime("%Y-%m-%d")
    end

    private 

    def time_taken
      @photo.date_time
    end    
  end
end