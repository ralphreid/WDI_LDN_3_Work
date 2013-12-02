require "hello_world/version"
require 'yaml'

module HelloWorld
  
  def self.say_hello language=nil, name=nil
    raise ArgumentError, "You need to provide a language key" if language.nil?
    [hash[language.to_sym], name].join(" ")
  end 

  def self.languages
    hash.keys
  end

  def self.random
    key = hash.keys.sample
    hash.assoc key
  end

  def self.hash
    path = File.expand_path("../../resources/hello.yml", __FILE__)
    @@hello_hash ||= YAML.load_file path
    @@hello_hash[:hello]
  end
end
