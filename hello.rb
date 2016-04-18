require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  @title = 'Hello World'
  "Hello World"
end

get '/hello/:name' do
   @title = 'Hello You'
  "Hello #{params[:name]}".strip
end

get '/form' do
  @title = 'The Form'
  erb :form
end

post '/form' do
  @title = 'The Form'
  @message = "You said '#{params[:content]}'"
  erb :home
end

not_found do
  @title = 'Page not found'
  halt 404, 'page not found'
end