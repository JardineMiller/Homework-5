require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test
	def setup
		@bear = Bear.new("Yogi")
	end
end