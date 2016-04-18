require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  "Hello World"
end

get '/hello/:name' do
  "Hello #{params[:name]}".strip
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

not_found do
  halt 404, 'page not found'
end