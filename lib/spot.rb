class Spot
	attr_reader  :row, :column, :square
	attr_accessor :value
	def initialize(value, row, column)
		@value = value
		@row = row
		@column = column
		@square = calc_square(row, column)
	end

	def attempt_to_solve(all_spots)
		all_other_spots = all_spots - [self]
		mates = all_other_spots.select{ |spot| spot.row == self.row || spot.column == self.column || spot.square == self.square}
		mate_values = mates.map(&:value).uniq.reject{|n|n.zero?}
		possible_values = (1..9).to_a - mate_values 
		(self.value = possible_values[0]) if possible_values.count == 1
	end

	private

	def calc_square(row, column)
		row/3 * 3 + 1 + column/3
	end
end