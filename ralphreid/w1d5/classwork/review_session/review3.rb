require "pry"

hash = {student1: "ralph", student2: "jj"}


  array_with_new_values = hash.map do |key, value|
    "#{key}--- #{value}"
end

p array_with_new_values