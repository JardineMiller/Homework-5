class Bear
	attr_reader :name, :stomach

	def initialize(name)
		@name = name
		@stomach = []
	end

	def roar
		return "Roar!"
	end

	def eats(river)
		eaten = river.fish.shift
		@stomach << eaten
	end

end