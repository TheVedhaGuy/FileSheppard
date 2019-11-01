module FileSheppard
  class Config
    class << self
      def read_config
        File.read("#{Dir.home}/.file_sheppard")
      end
    end
  end
end
