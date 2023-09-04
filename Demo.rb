require 'colorize'

class SudokuSolver

  def initialize(grid)
    @grid = grid
  end
  
  def display_grid()
    i = 1
    @grid.each do |row|
      puts "#{row[0]} #{row[1]} #{row[2]} | #{row[3]} #{row[4]} #{row[5]} | #{row[6]} #{row[7]} #{row[8]}"
      if i == 3 || i == 6
        puts "---------------------"
      end
      i += 1
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

# Create an instance of SudokuSolver
default = SudokuSolver.new(input_grid)

# Display the input grid
puts "Your free Sudoku Puzzle. (EASY)".light_blue
puts
default.display_grid()