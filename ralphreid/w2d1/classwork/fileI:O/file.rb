file = File.new("./database.txt", "r")
file.each do |line|
  puts line.chomp.split(",")
  puts "__________"
end
# print "add infos for a new person (name, age, sex)"
# file.puts gets.chomp
file.close


