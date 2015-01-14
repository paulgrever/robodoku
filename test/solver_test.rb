require './lib/solver'
require 'minitest/autorun'
require 'minitest/pride'

class SolverTest < Minitest::Test
  attr_reader :solver

  def setup
  	@solver = Solver.new
  end

  def test_it_exists
  	assert Solver
  end

  def test_it_sets_the_game_up
  	puzzle = "8 659\n7156"
  	results = solver.start_game(puzzle)
    assert_equal [[8, 0, 6, 5, 9], [7, 1, 5, 6]], results
  end

  def test_it_knows_it_if_the_board_is_completed
  	puzzle = "8 659\n7156"
  	game = solver.start_game(puzzle)
  	results = game.it_is_solved?
  	assert_equal false, results
  end

end