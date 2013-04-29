require 'sinatra'
require 'uri'
require 'net/http'

Sinatra.new do
  get '/' do
    json = Net::HTTP.get_response(URI.parse(params[:uri])).body
    content_type :json
    "#{params[:callback]}(#{json})"
  end
end.run!
