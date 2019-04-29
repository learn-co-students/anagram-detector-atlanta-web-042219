# Your code goes here!
require "pry"
class Anagram
	def initialize(word)
		@word = word
	end

	# def match(string)
	# 	check = true
	# 	anagrams = []
	# 	string.each {|str|
	# 		if @word.length == str.length
	# 			str.each {|char|
	# 				check = false if !word.include?(char)
	# 			}
	# 			anagrams << str if check
	# 		end
	# 	}
	# end

	def match(string_array)
		is_anagram = true
		all_anagrams = []

		string_array.each {|string|
			if string.size == @word.size
				string.each_char {|char|
					is_anagram = false if !@word.include?(char)
				}
				@word.each_char {|char|
					is_anagram = false if !string.include?(char)
				}
				all_anagrams << string if is_anagram
				is_anagram = true
			end
			# binding.pry
		}
		all_anagrams
	end
end
