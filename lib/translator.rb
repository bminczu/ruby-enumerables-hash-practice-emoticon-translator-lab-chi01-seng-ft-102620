
require 'pry'
require "yaml"

def load_library(file)
  file = YAML.load_file('lib/emoticons.yml')
  library = Hash.new
  file.each do |key, value|
    library[key] = {}
    library[key][:english] = value[0]
    library[key][:japanese] = value[1]
end
  library
  end

  def get_english_meaning(file, emoji)
  load_library(file)# code goes here
  file.each do |key, value|
    binding.pry
    puts "hih"
    puts "jijh"
    binding.pry
  end
end
end
binding.pry

def get_japanese_emoticon
  load_library(file)
  # code goes here
end
