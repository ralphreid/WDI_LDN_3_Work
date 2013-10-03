
# psuedo code

# store the people                                                              def people
# determine the number of people                                                def calc
# ask the user for the target group size
# calculate how many groups of the target size
# calculate the number of people in the smaller group
# randomly order the list of people
# step through the order list and drop people into each group bucket
# display the groups
# ask the user if they want to try again

list = [
  "Adam Buchan",
  "Alex Fasanmade",
  "Alex Hamlin",
  "Christos Shionis",
  "Clemens Kazda",
  "Daida Medina",
  "Jack Lalley",
  "Jamie Wallace",
  "Jonny Adshead",
  "Maloney Liu",
  "Neha Shah",
  "Oli Peate",
  "Ralph Reid",
  "Rob Forbes",
  "Selina Chotai",
  "Sharif Zu'bi",
  "Sophie Chitty",
  "Winna Bridgewater"
  ]

list.shuffle

number_people = list.length
puts "how many people per group?"
group_size = gets.chomp.to_i
number_of_whole_groups = (number_people / group_size).to_i

list.each_slice(group_size) do |value|
  p value
end











