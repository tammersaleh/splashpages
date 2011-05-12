Bundler.require
require 'sinatra/base'

class Splashpages < Sinatra::Base
  set :root, File.expand_path(File.dirname(__FILE__) + '/../')

  get '/' do
    haml :"#{host_without_www}/index"
  end

  get '/:name.css' do
    scss :"#{host_without_www}/#{params[:name]}"
  end

  def host_without_www
    request.host.sub(/^www./, "")
  end
end

