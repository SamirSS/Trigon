require 'bundler'
Bundler.require
require_relative 'models/quiz_france.rb'
require_relative 'models/quiz_us.rb'

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
  
  post '/quiz_france' do
    @travel = France_Travel.new(params)
    @results = @travel.determine_location
    erb :results
  end
  
  post '/quiz_us' do
    @travel = US_Travel.new(params)
    @results = @travel.determine_location
    erb :results
  end

end