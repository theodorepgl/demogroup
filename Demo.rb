require 'colorize'

class SudokuSolver

  def initialize(grid)
    @grid = grid
  end

  def display_grid
    (0..8).each do |row|
      (0..8).each do |col|
        print "#{@grid[row][col]} "
      end
      puts
    end
  end
end

# Create the input grid
input_grid = [
  [0, 1, 5, 0, 0, 3, 0, 0, 2],
  [0, 0, 0, 1, 0, 0, 9, 0, 6],
  [2, 7, 0, 0, 6, 8, 4, 3, 0],
  [4, 9, 0, 0, 0, 2, 0, 1, 7],
  [5, 0, 1, 0, 4, 0, 3, 8, 0],
  [0, 0, 3, 9, 0, 5, 0, 0, 0],
  [9, 0, 0, 0, 8, 1, 0, 4, 0],
  [8, 6, 0, 0, 7, 0, 0, 2, 5],
  [0, 3, 7, 2, 0, 4, 6, 0, 0]
]

  
show = SudokuSolver.new(input_grid)
puts "Your free Sudoku Puzzle. (EASY)".light_blue
puts
show.display_grid