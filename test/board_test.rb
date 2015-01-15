
require 'minitest/autorun'
require 'minitest/pride'
require './lib/board'

class BoardTest < Minitest::Test
  attr_reader :board

  def test_it_exists
    assert Board
  end

  def test_it_creates_spots
    puzzle = 
    "8 6594317
715638942
39472165
163459278
948267153
257813694
531942786
482176539
679385421"
    board = Board.new(puzzle)
    board.solution
    assert_equal 81, @spots.count
  end





end