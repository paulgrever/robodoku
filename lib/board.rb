 require './lib/spot' #for testing using rake
# require './spot' #for running in file

class Board
  attr_reader :spots

  def initialize(puzzle)
    @spots = init_spots(puzzle)
  end

  def solution
    unsolved_spots = @spots.select {|spot| spot.value.zero?}
    puts "#{unsolved_spots.count} unsolved spots"
    until unsolved_spots == []
      puts "trying to solve"
      unsolved_spots.each do |spot|
        spot.attempt_to_solve(@spots)
      end
      unsolved_spots = @spots.select {|spot| spot.value.zero?}
    end
    
     formatted_board
  end

private
  def init_spots(puzzle)
    spots = []
    rows = puzzle.split(/\n/)
    rows.each_with_index do |row, row_number |
      row.chars.map(&:to_i).each_with_index do |element, column_number|
        spots << Spot.new(element, row_number, column_number)
      end
    end
    spots
  end

  def formatted_board
    #todo take spots, figure out how to print it back.
    row_spots = @spots.group_by {|spot| spot.row}
    row_values = row_spots.map { |k, v| v.map(&:value)}
    row_values.map(&:join).join("\n")
  end
end