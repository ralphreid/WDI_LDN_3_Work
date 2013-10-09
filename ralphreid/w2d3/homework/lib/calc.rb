def trip_calculator
  
  #user inputs required
  
  distance = gets.chomp.to_f
  miles_per_gallon  = gets.chomp.to_f
  price_per_gallon  = gets.chomp.to_f
  speed  = gets.chomp.to_f

  #calculations

  cost = distance / ( mpg - 2 * ( speed - 60 ) )
  
  #output values

  cost = cost.round(2)
  duration = distance / speed
end


def bmi_calculator

  #user inputs required

  bmi_type = gets.chomp.downcase # (m)etric or (i)mperial
  mass = 
  height = 
  bmi_type = 

  #calculations

  case bmi_type 
  when true then unit_factor = 1  #TRUE means METRIC
  when false then unit_factor = 703  #TRUE means Imperial
  end  

  # outputs

  bmi_value = ( mass / height**2 ) * unit_factor
end


def mortage_monthly_payment_calculator
  
  # User Inputs
  interest_rate  = gets.chomp.to_f # annual interest rate
  principal = gets.chomp.to_f # principal remaining on the loan
  number_of_years = gets.chomp.to_f # years left
  
  # Calculations
  interest_mon = ( interest_rate / 100 ) / 12
  number_of_payments = number_of_years * 12

  # Output
  payment =  principal * ( ( interest_mon * (1 + interest_mon)**number_of_payments ) / ( ( 1 + interest_mon )**number_of_payments - 1) )  #monthly payment
end

def  classic
  first_number = 
  second_number = 
  result = case operator
    when "+" then first_number + second_number
    when "-" then first_number - second_number
    when "x" then first_number * second_number
    when "/" then first_number / second_number
end