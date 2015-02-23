require 'sinatra'
require 'sinatra/flash'

enable :sessions

get '/' do
  flash[:notice] = "Hooray, Flash is working!"
  erb :index
end
