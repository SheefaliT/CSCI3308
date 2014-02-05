#Part 6: Strings and Regular Expressions

def glob_match(filenames,pattern)
	prispattern = pattern.gsub(/[A-z]/){|char| '('+char+')'}		#pattern for words
	prispattern.gsub!(/[*]/, '*' => '.*')		#pattern for characters with words

	array = []
	filenames.each{|filname| filname.match(prispattern){|mat| array << mat[0]}}

	return array
end

print glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')

gets

              # ==> [“part2.rb~”, “.part3.rb.un~”]