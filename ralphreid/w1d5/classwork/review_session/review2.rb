require "pry"

array_with_new_values = [1,2,3,4,5].map do |value|
  "current value inside block #{value}"
end

p array_with_new_values