require "pg"
require "pry"


begin
  db = PG.connect(dbname: "facebook", host:"localhost")


  print "full name"
  name = gets.chomp.split #this will create an array element after any space character so it breaks the full name into bits
  print "date of birth"
  dob = gets.chomp
  print "city"
  city = gets.chomp
  sql = "INSERT INTO people(first, last, dob, city) VALUES ('#{name[0]}', '#{name[1]}', '#{dob}', '#{city}')"
  db.exec(sql)

  db.exec("SELECT * FROM people") do |result|
    result.each do |row|
      p row
    end
  end

ensure
  db.close
end