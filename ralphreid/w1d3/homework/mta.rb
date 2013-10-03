# Pseudo Code
# store the lines
# store the stops for each line with an ordinal system
# ask the user if they want to use the app
# if so, ask them the starting station
# if so, ask them the ending station
# calculate the distance from start to Union Station
# calculate the distance from Union Sation to the ending station
# calculate the total distance
# display the total distance
# ask the user if they want to try again

# utilities
def get_response
  input = gets.chomp!
  output = input.to_i

  output
end


# data store

l_n = {
  "Times Square" => 4, 
  "34th" => 3,
  "28th" => 2, 
  "23rd" => 1,
  "Union Square" => 0, 
  "8th" => -1
  }

l_l = {
  "8th" => 2,
  "6th" => 1,
  "Union Square" => 0,
  "3rd" => -1,
  "1st" => -2
  }

l_6 = {
  "Grand Central" => 3,
  "33rd" => 2,
  "28th" => 1,
  "Union Square" => 0,
  "Astor Place" => -1
  }



puts "\n\nHola, would like to use the MTA app? (Enter the number)\n"
puts "\t1 for YES"
puts "\t2 for No"
use = get_response
case use
when 1
  puts "Yes"
when 2
  puts "Bye bye"
  exit
end


puts "So, where are you starting your journey?"
puts "\t1 for Line N"
puts "\t2 for Line 6"
puts "\t3 for Line L"
line_choice = get_response
case line_choice
when 1
  stations = l_n
when 2
  stations = l_6
when 3 
  stations = l_l
end

puts "\n\nWhich station?\n\n"
p stations
start_station = get_response


puts "So, where are you ending your journey?"
puts "\t1 for Line N"
puts "\t2 for Line 6"
puts "\t3 for Line L"
line_choice = get_response
case line_choice
when 1
  stations = l_n
when 2
  stations = l_6
when 3 
  stations = l_l
end

puts "\n\nWhich station?\n\n"
p stations
end_station = get_response


start_distance = - start_station
end_distance = - end_station
total_stops = end_distance - start_distance
puts "\n\nOk, there are number of stops is #{total_stops.abs}"






# puts stations.key(start_station)
















