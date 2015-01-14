require './lib/set_up.rb'
require 'minitest/autorun'
require 'minitest/pride'

class SetUpTest < Minitest::Test
  attr_reader :set_up

  def setup
  	@set_up = SetUp.new
  	
  end

  def test_it_exists
  	assert SetUp
  end

  def test_it_splits_puzzle_by_lines
  	puzzle = "826594317
715638942
394721865
163459278"
		results = set_up.split_lines(puzzle)
		assert_equal ["826594317","715638942","394721865","163459278"], results
	end

	def test_turns_string_into_an_array_of_numbers
		puzzle = "826594317"
		results = set_up.element_array(puzzle)
		assert_equal [8,2,6,5,9,4,3,1,7], results
	end

	def test_it_takes_an_array_of_strings_and_changes_to_an_array_of_array_of_numbers
		puzzle = "826594317\n715638942\n394721865"
		results = set_up.initial_board(puzzle)
		assert_equal [[8,2,6,5,9,4,3,1,7], [7,1,5,6,3,8,9,4,2],[3,9,4,7,2,1,8,6,5]], results
	end

	def test_it_handles_a_missing_number
		puzzle = "8 6594317\n715638942\n394721865"
		results = set_up.initial_board(puzzle)
		assert_equal [[8,0,6,5,9,4,3,1,7], [7,1,5,6,3,8,9,4,2],[3,9,4,7,2,1,8,6,5]], results
	end

	def test_it_handles_multiple_missing_numbers
		puzzle = "8 659 317\n715    42\n394721865\n "
		results = set_up.initial_board(puzzle)
		assert_equal [[8,0,6,5,9,0,3,1,7], [7,1,5,0,0,0,0,4,2],[3,9,4,7,2,1,8,6,5],[0]], results
	end


end