require 'sinatra'

class Hello < Sinatra::Base
  get '/' do
    "hello! world"
  end
  get '/secret' do
    "random message"
  end
  get '/random-cat' do
    @names = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end
  post '/named-cat' do
    p params
    @names = params[:name]
    erb(:index)
  end
  get '/cat-form' do
    erb(:index)
  end
end
