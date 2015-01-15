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
    assert_equal "826594317\n715638942\n39472165\n163459278\n948267153\n257813694\n531942786\n482176539\n679385421", results
  end

  def test_it_solves_a_puzzle_with_a_two_elements_removed_from_a_row

    puzzle = "8 6594 17
715638942
39472165
163459278
948267153
257813694
531942786
482176539
679385421"
    results = solver.solve(puzzle)
    assert_equal "826594317\n715638942\n39472165\n163459278\n948267153\n257813694\n531942786\n482176539\n679385421", results
  end

  def test_it_solves_a_puzzle_with_elements_removed_from_columns

    single_puzzle = "8 6594317
7 5638942
3947 165
163459278
94 267153
257813694
531942786
482176539
679385421"
    results = solver.solve(single_puzzle)
    assert_equal "826594317\n715638942\n39472165\n163459278\n948267153\n257813694\n531942786\n482176539\n679385421", results
  end

  def test_it_can_solve_some_of_the_puzzles_from_jeff
    puzzle = 
"  3 2 6  
9  3 5  1
  18 64  
  81 29  
7       8
  67 82  
  26 95  
8  2 3  9
  5 1 3  "
  results = solver.solve(puzzle)

  assert_equal "483921657\n967345821\n251876493\n548132976\n729564138\n136798245\n372689514\n814253769\n695417382", results
end




end