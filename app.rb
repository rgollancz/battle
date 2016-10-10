require 'sinatra'
require 'shotgun'

get '/secret' do
  'This is top secret!!!'
end

set :session_secret, 'super secret'
