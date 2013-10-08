require "pry"
require "rainbow"

class WordArray

  include Enumerable

  def initialize(string)
    @words = string.split
    @word_count = @words.length
  end

  def each
    for i in 0...@word_count
      yield(@words[i], i)
    end
  end

end

words = WordArray.new "foo bar baz wibble wobble"

words.each do |word, i|
  puts "word #{i} is #{word}"
end

binding.pry