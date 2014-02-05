#Part 7a: Object-Oriented Programming
class Dessert
	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def healthy?
		if @calories < 200
			return true
		end
		return false
	end

	def delicious?
		return true
	end
end

#Part 7b: Create class JellyBean
class JellyBean < Dessert	
	def initialize(name, calories, flavor)
		@flavor = flavor
	end

	def delicious?
		if @flavor == "black licorice"
			return false
		end
		return true
	end
end