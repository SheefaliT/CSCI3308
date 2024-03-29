#Part 3: Word Count

def count_words(string)
	temp_str = string.downcase #=> get rid of non-words
	wordarray = temp_str.scan(/\w+/) #=> put words from string into array
	myhash = Hash.new(0) #=> new hash
	wordarray.each {|word| myhash[word] += 1 } #=> puts elements of array into hash as keys and keeps track of how many times the word appears
	return myhash
end

puts count_words("A man, a plan, a canal -- Panama")
puts count_words("Doo bee doo bee doo")
