#Part 9: Currency conversion

#sources: http://stackoverflow.com/questions/9651612/ruby-method-missing
#sources: https://github.com/kevdashdev/saas-hw1/blob/master/ruby/part6.rb
#sources: https://gist.github.com/tomtung/1973534

class Numeric
	@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' =>1}
	def method_missing(method_id)
		singular_currency = method_id.to_s.gsub( /s$/, '') #=> gets rid of 's' on end of currency and converts symbol to string
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		else
			super
		end
	end

	def in(currency) #=> method takes in currency
		singular_currency = currency.to_s.gsub( /s$/, '') #=> gets rid of 's' and converts it to string
		self / @@currencies[singular_currency] #=> goes into class variable, finds value from key
	end
end

print 5.dollars.in(:yen)
