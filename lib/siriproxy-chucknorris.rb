# encoding: UTF-8
require 'cora'
require 'siri_objects'
require 'httparty'
require 'pp'
require 'json'


class SiriProxy::Plugin::ChuckNorris < SiriProxy::Plugin
  def initialize(config)
  end
  
  listen_for /chuck norris joke/i do
    say "Here is your Chuck Norris joke:"
	@response = Net::HTTP.get(URI.parse("http://api.icndb.com/jokes/random"))
	@result = JSON.parse(@response)
	@joke = @result["value"]["joke"]
	say "#{@joke}"
	request_completed
  end
  listen_for /chuck noris joke/i do
    say "Here is your Chuck Norris joke:"
	@response = Net::HTTP.get(URI.parse("http://api.icndb.com/jokes/random"))
	@result = JSON.parse(@response)
	@joke = @result["value"]["joke"]
	say "#{@joke}"
	request_completed
  end
 
end
