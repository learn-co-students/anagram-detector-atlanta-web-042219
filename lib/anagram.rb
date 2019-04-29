require 'pry'
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    self_letters = self.word.split("").sort
    array.select {|e| self_letters == e.split("").sort && self.word.length == e.length}
  end

end
