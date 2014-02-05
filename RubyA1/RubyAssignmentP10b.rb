#Part 10b: Palindromes again
module Enumerable
	def palindrome?
		array = [] #=> make empty array
		self.collect{|num| num} == self.collect{|num|num}.reverse #=> compare array of numbers to its reversed self
	end
end
