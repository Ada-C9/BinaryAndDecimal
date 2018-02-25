# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

require 'awesome_print'
require 'pry'

def binary_to_decimal(binary_array)
  indices = []
  (0..binary_array.length - 1).each do |i|
    reverse_index = (binary_array.length - 1) - i
    indices << reverse_index
  end

  total = 0
  (0..binary_array.length - 1).each do |i|
    value = binary_array[i] * (2 ** indices[i])
    total += value
  end
  return total
end
