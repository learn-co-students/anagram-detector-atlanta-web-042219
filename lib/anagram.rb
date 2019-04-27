require 'pry'

# Your code goes here!
class Anagram

attr_accessor :word

def initialize(word)
  @word = word
  # binding.pry
end

def match(anagram)
  # anagram.select {|element| element == @word}
  # binding.pry
  anagram.select do |element|
    element.split("").sort == @word.split("").sort
  end
end

end
