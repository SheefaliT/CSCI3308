#Part 2: Strings
class Palindrome
	def initialize(string, tempvar)
		@string = string.downcase #input, one @ is a class variable 
		@string = string.gsub(/[\s \W]/, '') #anything not a character, and replaces it with nothing, two pairs of quotes
		@tempvar = string.reverse! #trolls takes string and replaces it permanently (that's what ! does)
		@tempvar = string.gsub!(/[\s \W]/, '') #troll rips out anything that's not a character
	end
	def print
		puts "Word is #{@string}" #run print
		puts "Reverse is #{@tempvar}" #run tempvar
	end
	def compare #if string is = trolls, then print true, otherwise print lies
		if @string == @tempvar
			puts "TRUE"
			return true
		else
			puts "BOO"
			return false
		end
	end
end

wat = Palindrome.new("CARS AND SCAR", "Placeholder") #test code
wat.print
wat.compare