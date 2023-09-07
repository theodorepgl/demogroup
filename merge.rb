require 'colorize'

input_string = "015003002000100906270068430490002017501040380003905000900081040860070025037204600"

def parse_string(input)
    grid = []
    input.chars.each_slice(9) do |row|
        grid << row.map do |char|
            char.to_i
        end
    end
    # grid.each do |row|
    #     puts row.join(" ")
    grid
end

grid = parse_string(input_string)
puts "\nSolve this Sodoku Puzzle:\n".red
for row in grid
    p row 
end

# answer = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# grid.each_with_index do |row, row_index|
#     row.each_with_index do |number, col_index|
#         if number == 0
#             grid[row_index][col_index] = rand(1..9)
#         end
#     end
# end

# puts "\n"
# for row in grid
#     p row 
# end

grid.each_with_index do |row, row_index|
  row.each_with_index do |number, col_index|
    if number == 0
      answer = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      row.each do |default_number|
        answer.delete(default_number)
      end
      grid[row_index][col_index] = answer.sample
    end
  end
end

puts "\nTesting row:".red
for row in grid
    p row 
end

# grid.each_with_index do |col, col_index|
#   col.each_with_index do |number, row_index|
#     if number == 0
#       answer = [1, 2, 3, 4, 5, 6, 7, 8, 9]
#       col.each do |default_number|
#         answer.delete(default_number)
#       end
#       grid[col_index][row_index] = answer.sample
#     end
#   end
# end

# puts "\nTesting column:".red
# for col in grid
#     p col 
# end