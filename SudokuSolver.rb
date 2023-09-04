class SudokuSolver

  def initialize(grid)
    @grid = grid
  end

  def solve
    return solve_sudoku(0, 0)
  end

  def solve_sudoku(row, col)
    # Check if we have reached the end of the grid
    if row == 9
      return true
    end

    # Check if the current cell is already filled
    if @grid[row][col] != 0
      # Move to the next cell
      if col == 8
        return solve_sudoku(row + 1, 0)
      else
        return solve_sudoku(row, col + 1)
      end
    end

    # Try different numbers in the current cell
    (1..9).each do |num|
      if is_valid(row, col, num)
        # Fill the current cell with the valid number
        @grid[row][col] = num

        # Move to the next cell
        if col == 8
          if solve_sudoku(row + 1, 0)
            return true
          end
        else
          if solve_sudoku(row, col + 1)
            return true
          end
        end

        # If the current number doesn't lead to a solution, backtrack
        @grid[row][col] = 0
      end
    end

    return false
  end

  def is_valid(row, col, num)
    # Check if the number already exists in the row
    (0..8).each do |i|
      if @grid[row][i] == num
        return false
      end
    end

    # Check if the number already exists in the column
    (0..8).each do |i|
      if @grid[i][col] == num
        return false
      end
    end

    # Check if the number already exists in the 3x3 grid
    start_row = (row / 3) * 3
    start_col = (col / 3) * 3

    (0..2).each do |i|
      (0..2).each do |j|
        if @grid[start_row + i][start_col + j] == num
          return false
        end
      end
    end

    return true
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

# Create a SudokuSolver object
solver = SudokuSolver.new(input_grid)
show = SudokuSolver.new(input_grid)

puts "Sudoku to play:"
show.display_grid
puts
# Solve the Sudoku puzzle
if solver.solve
  puts "Sudoku solved:"
  solver.display_grid
else
  puts "No solution found."
end