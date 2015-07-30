require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/country' do
    @country = params[:country]
    erb :country
  end

end