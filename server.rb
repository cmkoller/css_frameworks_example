require 'sinatra'
require 'sinatra/flash'

enable :sessions

get '/' do
  erb :index
end

get '/tada' do
  flash[:success] = "Hey! You made it!"
  flash[:warning] = "Watch out!"
  erb :index
end
