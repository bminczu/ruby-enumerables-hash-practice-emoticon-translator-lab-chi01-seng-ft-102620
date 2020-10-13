
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

def get_english_meaning(file_path, emoji)
  library = load_library(file_path)
  emoji = library.keys.find do |key|
    library[key][:japanese] ==  emoji
  end
  emoji ? emoticon : "Sorry, that emoticon was not found"
end
