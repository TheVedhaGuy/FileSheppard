module FileSheppard
  class Config
    class << self
      def read_config
        File.read("#{Dir.home}/.file_sheppard")
      
      rescue Errno::ENOENT 
        raise SetupRequiredError
      end
    end
  end
end
