require "pry"
require "pry-byebug"
require 'sinatra'
require 'sinatra/contrib/all'

require_relative 'lib/calc'

enable :sessions


get '/' do
  erb :welcome
end

get '/classic/' do
  erb :classic
end

post '/classic/' do
  first_number = params[:first_number].to_f
  second_number = params[:second_number].to_f
  operator = params[:operator]
  @result = classic(first_number, second_number, operator)
  erb :classic
end

get '/bmi/' do 
  erb :bmi
end

post '/bmi/' do 
  bmi_type = params[:bmi_type]
  mass = params[:mass].to_f
  height = params[:height].to_f
  @result = bmi_calculator(bmi_type, mass, height)
  erb :bmi
end

get '/mortage/' do
 
    
  erb :mortage
end

get '/trip/' do
  erb :trip
end

post '/trip/' do
  distance = params[:distance].to_f
  miles_per_gallon = params[:miles_per_gallon].to_f
  price_per_gallon = params[:price_per_gallon].to_f
  speed = params[:speed].to_f
  @duration = distance / speed
  @cost = trip_calculator(distance, miles_per_gallon, speed)
  erb :trip
end