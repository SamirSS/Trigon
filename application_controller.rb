require 'bundler'
Bundler.require
require_relative 'models/quiz_us.rb'
require_relative 'models/quiz_china.rb'
require_relative 'models/quiz_france.rb'
require_relative 'models/quiz_south_africa.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/country' do
    if params[:country] == "usa"
      erb :quiz_us
    elsif params[:country] == "china"
      erb :quiz_china
    elsif params[:country] == "france"
      erb :quiz_france
    elsif params[:country] == "south_africa"
      erb :quiz_south_africa
    else
      return "That's not an option."
    end
  end
  
  post '/quiz_us' do
    @travel = US_Travel.new(params)
    @results = @travel.determine_location
    erb :results
  end
  
  post '/quiz_china' do
    @travel = China_Travel.new(params)
    @results = @travel.determine_location
    erb :results
  end
  
  post '/quiz_france' do
    @travel = France_Travel.new(params)
    @results = @travel.determine_location
    erb :results
  end
  
  post '/quiz_south_africa' do
    @travel = South_Africa_Travel.new(params)
    @results = @travel.determine_location
    erb :results
  end

end