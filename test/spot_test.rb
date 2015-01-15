require 'minitest/autorun'
require 'minitest/pride'
require './lib/spot'

class SpotTest < Minitest::Test
  attr_accessor :value

  def test_it_exists
    assert Spot
  end

  def test_it_keeps_track_of_provided_values
    spot = Spot.new(4, 7, 8) 
    results = spot.value
    assert_equal 4, results
  end

  def test_it_keeps_track_of_multiple_values
    spot1 = Spot.new(4, 7, 8) 
    spot2 = Spot.new(5, 6, 9)
    results = spot1.value == spot2.value
    assert_equal false, results
  end

  def test_it_keeps_track_when_values_are_zero
    spot1 = Spot.new(0, 7, 8) 
    results = spot1.value 
    assert_equal 0, results
  end

  def test_it_keeps_track_when_multiple_values_are_zero
    spot1 = Spot.new(0, 7, 8) 
    spot2 = Spot.new(0, 6, 9)
    results = spot1.value 
    assert_equal 0, results
    results2 = spot2.value
    assert_equal 0, results2
    assert results == results2
  end

  def test_values_can_change_but_do_not_effect_rows
    spot1 = Spot.new(0, 7, 8)
    spot1.value = 5
    assert_equal 5, spot1.value
    assert_equal 7,  spot1.row
  end 

  def test_it_keeps_track_of_rows
    spot1 = Spot.new(4, 7, 8) 
    results = spot1.row
    assert_equal 7, results
  end

  def test_it_keeps_track_of_rows_multiple_rows
    spot1 = Spot.new(4, 7, 8) 
    spot2 = Spot.new(5, 1, 9) 
    results = spot1.row
    results2 = spot2.row
    refute results == results2
  end

  def test_it_row_do_not_change
    skip
    spot1 = Spot.new(4, 7, 8) 
    spot1.row = 5
    assert_raises (NoMethodError), spot1.row
  end

  def test_it_keeps_track_of_column
    spot1 = Spot.new(4, 7, 8) 
    results = spot1.column
    assert_equal 8, results
  end

  def test_it_keeps_track_of_multiple_columns
    spot1 = Spot.new(4, 7, 8) 
    spot2 = Spot.new(5, 1, 3) 
    results = spot1.column
    results2 = spot2.column
    refute results == results2
  end

  def test_it_can_calculate_which_square_it_is_in_square_9
    spot1 = Spot.new(4, 7, 8) 
    results = spot1.square
    assert_equal 9, results
  end

  def test_it_can_calculate_which_square_it_is_in_square1
    spot1 = Spot.new(4, 0, 2) 
    results = spot1.square
    assert_equal 1, results
  end

  def test_it_can_calculate_which_square_it_is_in_square5
    spot1 = Spot.new(4, 4, 4) 
    results = spot1.square
    assert_equal 5, results
  end

  



end