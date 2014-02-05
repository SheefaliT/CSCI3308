#Part 10a: Palindromes

class String
	def palindrome?
		temp_str = self.downcase.gsub(/\W/, "")
		temp_str == temp_str.reverse 
	end
end
