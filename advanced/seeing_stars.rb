# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that
# is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

# Examples
# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *

def stars(num)
  star = build_end(num).reverse
  star << '*' * num
  star << build_end(num)
  puts star
end

def build_end(num)
  result = []
  rows = num / 2
  (0..rows - 1).each do |n|
    spaces = ' ' * n
    stars = '*' + spaces + '*' + spaces + '*'
    result << stars.center(num)
  end
  result
end

# option 2
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
