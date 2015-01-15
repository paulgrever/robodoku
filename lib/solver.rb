 # require './board' #for running
require './lib/board'  #for testing using rake

class Solver

  def solve(puzzle)
    @board = Board.new(puzzle)
    @board.solution
  end
end


# test = Solver.new
# puzzle =
"
  3 2 6  
9  3 5  1
  18 64  
  81 29  
7       8
  67 82  
  26 95  
8  2 3  9
  5 1 3 "

# p test.solve(puzzle)
