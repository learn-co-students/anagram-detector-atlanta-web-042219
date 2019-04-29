# Your code goes here!
require "pry"
class Anagram
    attr_accessor :words

    def initialize(input)
        @words = input
    end

    def match(input)
        output = []
        input.select do |w| 
            if w.split("").sort == @words.split("").sort
                output << w
            end
        end
        output
    end     
end