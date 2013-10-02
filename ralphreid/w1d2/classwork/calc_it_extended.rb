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

calculator