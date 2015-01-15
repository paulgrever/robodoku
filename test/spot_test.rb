require 'minitest/autorun'
require 'minitest/pride'
require './lib/spot'

class SpotTest < Minitest::Test

  def test_it_exists
  	assert Spot
  end

  def test_it_keeps_track_of_provided_values
  	spot = Spot.new(4, 7, 8) 
  	results = spot.value
  	assert_results 4, results
  end
end