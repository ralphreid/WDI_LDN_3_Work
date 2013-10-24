# pseudo code
# take a string
# put into a varialbe
# then reverse the string into another varialbe
# compare the to variable to see if they are the same
# turn it into a self method

# take a word
# split out the words into an array
# count the number of times each word appears
# put counts into a hash where key is the word and value is the count
# return hash keys with value of number of times each word apears
# non-words ignored



def palindrome word
  word = word.downcase
  reverse = word.reverse
  word == reverse
end

def word_count string
  string = string.downcase
  words = string.split
  words.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
end
