require "spec_helper"

RSpec.describe FileSheppard::Config do
  describe ".read_config" do 

    it "returns the contents of the file" do 
      expect(File).to receive(:read).with("#{Dir.home}/.file_sheppard")

      FileSheppard::Config.read_config
    end

    context "when config file does not exist" do 
      it "raises SetupRequiredError" do 


        expect { FileSheppard::Config.read_config }.to raise_error(FileSheppard::SetupRequiredError)
      end
    end
  end
end