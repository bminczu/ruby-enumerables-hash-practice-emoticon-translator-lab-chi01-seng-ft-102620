
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
  oad_library(file)
 binding.pry
  end

binding.pry

#def get_japanese_emoticon
  #load_library(file)
  # code goes here
end
