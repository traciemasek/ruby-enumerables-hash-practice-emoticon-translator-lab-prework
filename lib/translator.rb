# require modules here
require "yaml"


def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  
  new_hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  emoticons.each do |key, value_arr|
    new_hash["get_meaning"][value_arr[1]] = emoticons[key]
    new_hash["get_emoticon"][value_arr[0]] = value_arr[1]
  end
  
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  new_hash = load_library(file_path)
  
  new_hash["get_emoticon"].each do |eng, japan|
    if eng == emoticon
      japan
    else
      p "Sorry, that emoticon was not found"
    end
  end
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path)
  
  new_hash["get_meaning"].each do |japanese, meaning|
  end  
end