    # get the list of all already listed value
    # get the list of all potential values
    # if there is only one potential value, that value must belong in that box
    # if not, then we can't speculate, so we must move onto the next box
    # repeat overr and over until all of the zeroes are gone. Hi im here hehe.

class SudokuPuzzle
    def initialize(board)
        @board = board
    end

    attr_reader :board

    def complete?
        @board.flatten.none?(&:zero?)
    end
end

board = [
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

puzzle = SudokuPuzzle.new(board)
puts puzzle.complete?