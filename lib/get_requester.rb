# Write your code here
require 'net/http'
require 'json'

class GetRequester
  def initialize url
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    Net::HTTP.get_response(uri).body
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end