require 'file_sheppard/errors'

module FileSheppard
  autoload(:Version, 'file_sheppard/version')
  autoload(:Config, 'file_sheppard/config')
  class Error < StandardError; end
  # Your code goes here...
end
