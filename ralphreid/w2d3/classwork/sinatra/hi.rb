require "sinatra"
require "sinatra/contrib/all"

enable :sessions

get "/" do
  p params
  "This is the homepage"
end

get "/hi" do
  params
  "Hello world"
end

get "/name/:first/:last/:age" do
  "Hello, your name is #{params[:first]} #{params[:last]} Your age is #{params[:age]}"
end

get "/calc" do
  erb :calc
end

post "/calc" do
  session["calc_count"] = 0 unless session["calc_count"]
  session["calc_count"] +=1
  operator = params[:operator]
  first_number = params[:first_number].to_f
  second_number = params[:second_number].to_f
  @calc_count = session["calc_count"]
  @result = case operator
    when "+" then first_number + second_number
    when "-" then first_number - second_number
    when "/" then first_number / second_number
    when "x" then first_number * second_number  
  end
  erb :calc
end

get "/about" do
  @name = "Gerry"
  @job = "developer"
  erb :about
end
