require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test
	def setup
		@fish1 = Fish.new("salmon")
		@fish2 = Fish.new("cod")
		@fish3 = Fish.new("nemo")
		@fish = [@fish1, @fish2, @fish3]
		@river = River.new("Amazon", @fish)
		@bear = Bear.new("Yogi")
	end

	def test_bear_eats__bear_stomach_size
		@bear.eats(@river)
		assert_equal(1, @bear.stomach.count)
	end

	def test_bear_eats__river_fish_count
		@bear.eats(@river)
		assert_equal(2, @river.fish.count)
	end
	
	def test_count_fish
		assert_equal(3, @river.fish.count)
	end

	def test_bear_stomach
		assert_equal(0, @bear.stomach.count)
	end

	def test_bear_roar
		assert_equal("Roar!", @bear.roar)
	end
end

