require './lib/solver'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class SolverTest < Minitest::Test
  attr_reader :solver

  def setup
  	@solver = Solver.new
  end

  def test_it_exists
  	assert Solver
  end

  def test_it_solves_a_puzzle_with_a_single_element
    
    single_puzzle = "8 6594317
715638942
39472165
163459278
948267153
257813694
531942786
482176539
679385421"
    results = solver.solve(single_puzzle)
    assert_equal 81, results.length
  end



end