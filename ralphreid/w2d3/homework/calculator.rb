require "pry"
require "pry-byebug"
require 'sinatra'
require 'sinatra/contrib/all'

require_relative 'lib/calc'

enable :sessions


get '/' do
  # session['answers'] = {} # initialize the session storage
    
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

get '/mortage/' do
 
    
  erb :mortage
end

get '/trip/' do
  
    
  erb :trip
end