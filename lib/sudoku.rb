require './lib/solver'
require 'pry'

filename = ARGV[0]
puzzle = File.read('puzzle_file.txt')
solver = Solver.new
solution = solver.solve(puzzle)
puts solution