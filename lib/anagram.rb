# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
  @word = word
  end

  # def match(array_possible_anagrams)
  #   anagrams = []
  #   array_possible_anagrams.each do |word|
  #     if word.split.sort == @word.split.sort
  #       anagrams << word
  #     end
  #   end
  #   anagrams
  # end
  def match(array)
      array.select {|x| x.split("").sort == @word.split("").sort}
    end

end
