class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    array.select {|e| self.word.split("").sort == e.split("").sort}
  end

end
