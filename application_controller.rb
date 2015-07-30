require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/country' do
    if params[:country] == "usa"
      erb :quiz_us
    else
      erb :quiz_france
    end
  end

end