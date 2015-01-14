# require './lib/spot'
require './spot'

class Board

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
		 puts formatted_board

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
		#todo take spots, figure out how to p
		@spots
	end
end