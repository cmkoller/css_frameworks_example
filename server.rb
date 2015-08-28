require 'sinatra'
require 'sinatra/flash'

enable :sessions

get '/' do
  erb :index
end
