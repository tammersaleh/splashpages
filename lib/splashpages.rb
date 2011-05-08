require 'sinatra/base'

class Splashpages < Sinatra::Base
  set :root, File.expand_path(File.dirname(__FILE__) + '/../')

  get '/' do
    haml :"#{request.host}/index"
  end

  get '/:name.css' do
    scss :"#{request.host}/#{params[:name]}"
  end
  
  post '/invitation' do
    email = params[:email]
    # TODO: stuff.
  end
end

