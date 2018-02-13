require 'httparty'
require 'json'
require 'rubygems'
require 'pp'

url = 'http://api.flutrack.org/?limit=50'
response = HTTParty.get url
# puts response.parsed_response
items = JSON.parse(response.body, {:symbolize_names => true})
puts user_name[:user_name][0][:tweet_text]