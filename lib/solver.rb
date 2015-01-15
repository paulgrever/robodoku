 # require './board' #for running
 require './lib/board'  #for testing using rake

class Solver

  def solve(puzzle)
    @board = Board.new(puzzle)
    @board.solution
  end
end


test = Solver.new
puzzle = "8 6594317
715638942
39472165
163459278
948267153
257813694
531942786
482176539
679385421"

p test.solve(puzzle)
