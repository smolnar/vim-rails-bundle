require 'rubygems'
require 'settingslogic'

class Configuration < Settingslogic
  source File.join(File.dirname(__FILE__), '..', 'config.yml')
end
