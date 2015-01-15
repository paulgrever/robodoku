
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test
  attr_reader :board

  def test_it_exists
  	skip
  	assert Board("p")
  end



end