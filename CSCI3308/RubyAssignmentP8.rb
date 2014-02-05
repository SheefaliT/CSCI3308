#Part 8: Object Oriented Programming

#sources:https://github.com/kevdashdev/saas-hw1/blob/master/ruby/part5.rb
#sources:http://stackoverflow.com/questions/9561072/ruby-using-class-eval-to-define-methods

class Class
	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s
		attr_reader attr_name
		attr_reader attr_name+"_history"
		class_eval %Q"
            def #{attr_name}=(value)
                if !defined? 
                	@#{attr_name}_history
                    @#{attr_name}_history = [@#{attr_name}]
                end
                @#{attr_name} = value
                @#{attr_name}_history << value
            end
        "
	end
end

class Foo
	attr_accessor_with_history :bar
end

f = Foo.new

f.bar = 1

f.bar = 2

f.bar_history # => if your code works, should be [nil, 1, 2]