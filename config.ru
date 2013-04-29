require 'sinatra'
require 'uri'
require 'net/http'

Sinatra.new do
  get '/' do
    if params[:uri] && params[:callback]
      handle_jsonp_request
    else
      handle_invalid_request
    end
  end

  def handle_jsonp_request
    json = Net::HTTP.get_response(URI.parse(params[:uri])).body
    content_type :json
    "#{params[:callback]}(#{json})"
  end

  def handle_invalid_request
    content_type :text
    "Usage: /?callback={insert callback name}&uri={insert JSON URI}"
  end
end.run!
