#refector again

valid = []
(0..10).to_a.each do |value|
  valid.push(value) if value % 3 ==0
end

#refector again

valid = (0..10).to_a.select do |value|
  value % 3 ==0
end

#refector again

valid = (0..10).to_a.select { |value| value % 3 ==0 }

############################
valid = []
(0..10).to_a.each do |value|
  new_value = value * 3 
  valid.push new_value
end

#refector again


valid = (0..10).to_a.collect do |value|
  value * 3 
end

#refector again

valid = (0..10).to_a.collect { |value| value * 3 }


################
instructors = {
  instructor1: "Gerry",
  instructor2: "jon",
  instructor3:"david",
  instructor4: "julien",
}

instructors.each do |value|
  puts "value.inspect"
end


################
instructors = {
  instructor1: "Gerry",
  instructor2: "jon",
  instructor3:"david",
  instructor4: "julien",
}

instructors.each do |key, value|
  puts "the key of #{value} is #{key}"
end


################

(1..10).to_a.detect { |value| value % 3 ==0 }
(1..10).to_a.find_all { |value| value % 3 ==0 }



























