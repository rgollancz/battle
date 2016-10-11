require 'sinatra'
require 'shotgun'

get '/random-dog' do
  @doggy_names = ["PAWS", "KAISER", "LUDWIG", "ARCHIBOLD"].sample
  erb :index
end

post '/named-dog' do
  p params
  @doggy_names = params[:name]
  erb :index
end

get "/form" do
  erb :dog_form
end

get '/secret' do
  'Top Secret!'
end

set :session_secret, 'super secret'
