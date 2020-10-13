
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
  library = load_library(file)
  emoji = library.keys.find do |key|
    libraryp[key][:japanese] ==  emoji
  end
  emoji ? emoji : "Sorry, that emoticon was not found"
end