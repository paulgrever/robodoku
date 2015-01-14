require 'minitest/autorun'
require 'minitest/pride'
require './lib/spot'

class SpotTest < Minitest::Test

  def test_it_exists
  	assert Spot
  end
end