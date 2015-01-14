
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test
  attr_reader :board

  def setup
  	@board = Board.new
  end

  def test_it_exists
  	assert Board
  end



end