#Part 5: Anagrams
def combine_anagrams(words)
	print words.group_by { |word| word.each_char.sort }.values #=>make a hash with each word as a key and an array of words related to each key as the values
	#source: http://stackoverflow.com/questions/16631961/how-can-i-simplify-or-clean-up-this-anagram-method
end

# input: ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream']

# output: [ ["cars", "racs", "scar"],

# 		["four"],

# 		["for"],

# 		["potatoes"],

# 		["creams", "scream"] ]