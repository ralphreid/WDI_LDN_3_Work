
def trip_calculator
  puts "Distance – how far will you drive?"
  distance = gets.chomp.to_f
  puts "what is the fuel efficiency of the car?"
  mpg  = gets.chomp.to_f
  puts "gas price per gallon?"
  pg  = gets.chomp.to_f
  puts "how fast will you drive"
  speed  = gets.chomp.to_f

  duration = distance / speed
  cost = distance / ( mpg - 2 * ( speed - 60 ) )
  cost = cost.round(2)

  puts "Your trip will take #{duration} hours and cost $#{cost}."

end

def bmi_calculator
  puts "do you prefer (m)etric or (i)mperial?"
  bmi_type = gets.chomp.downcase
  case bmi_type 
  when 'm'
    puts "What's your height in m?"
    height  = gets.chomp.to_f
    puts "What's your mass in kg?"
    mass = gets.chomp.to_f
    bmi = mass / height**2
    puts bmi
  when 'i'
    puts "What's your height in m?"
    height  = gets.chomp.to_f
    puts "What's your mass in kg?"
    mass = gets.chomp.to_f
    bmi = ( mass / height**2 ) * 703
    puts bmi
  else puts "try again"
  end  
end

def mortage_monthly_payment_calculator
  puts "What's the annual interest rate?"
  interest_rate  = gets.chomp.to_f
  puts "What is the principal remaining on the loan?"
  principal = gets.chomp.to_f
  puts "How many years left?"
  number_of_years = gets.chomp.to_f 
  # formulas below
  interest_mon = ( interest_rate / 100 ) / 12
  number_of_payments = number_of_years * 12
  payment =  principal * ( ( interest_mon * (1 + interest_mon)**number_of_payments ) / ( ( 1 + interest_mon )**number_of_payments - 1) )
  puts "Your monthly payment is #{payment.round(2)}"
end

def  calculation(first_number, second_number, operation)
  case operation
    when "a"
      return first_number + second_number
    when "s"
      return first_number - second_number
    when "m"
      return first_number * second_number
    when "d"
      return first_number / second_number
    else
      puts "Please try again selecting one of the operations"
  end
end


def  operation_type(first_number, second_number, operation)
  case operation
    when "a"
      return "added to"
    when "s"
      return "subtracted from"
    when "m"
      return "multiplied by"
    when "d"
      return "divided by"
  end
end


def calculator
  puts "Hello, which operation do you want to do?"
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  operation = gets.chomp.strip.downcase
  puts "First Number"
  first_number = gets.chomp.to_i
  puts "Second Number"
  second_number = gets.chomp.to_i
  puts "\n\n\nThanks!"
  puts "\n\n#{ first_number } #{ operation_type(first_number,second_number,operation) } #{ second_number }\n"
  puts "equals #{ calculation(first_number, second_number, operation) }\n\n"
end

def chooser
  puts "Hello, which type of calculation do you want to do?"
  puts "(B)MI, (T)rip, (C)alculator, (M)ortgage"
  choice = gets.chomp.strip.downcase
  case choice
  when 'b'
    bmi_calculator
  when 't'
    trip_calculator
  when 'c'
    calculator
  when 'm'
    mortage_monthly_payment_calculator
  end
end

chooser

