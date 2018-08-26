class Recipe < ApplicationRecord
  #key_value = "31c388c0c5f859983f4ea332128f6fd2"
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || "www.food2fork.com"
  base_uri "http://#{hostport}/api"
  default_params key: key_value
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
