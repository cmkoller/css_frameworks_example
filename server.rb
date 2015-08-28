require 'sinatra'
require 'sinatra/flash'

enable :sessions

get '/' do
  erb :index
end

get '/tada' do
 flash[:success] = "Hooray, Flash is working!"
 redirect '/'
end
