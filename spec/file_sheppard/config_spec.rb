require "spec_helper"

RSpec.describe FileSheppard::Config do
  describe ".read_config" do 

    it "returns the contents of the file" do 
      expect(File).to receive(:read).with("#{Dir.home}/.file_sheppard")

      FileSheppard::Config.read_config
    end
  end
end