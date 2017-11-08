require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class FishTest < MiniTest::Test
	def setup
		@fish = Fish.new("salmon")
		@bear = Bear.new("Yogi")
	end
	
end