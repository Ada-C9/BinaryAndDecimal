# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
require 'awesome_print'
#
# binary_array = []
#
# 8.times do |rand_num|
#   binary_array << ([0, 1].sample)
# end
# ap binary_array

def binary_to_decimal(binary_array)

  decimal = 0
  binary_array.length.times do |i|
    add_to_decimal = binary_array[i] * (2**(binary_array.length - i - 1))
    decimal += add_to_decimal
    
  end
  return decimal
  # raise NotImplementedError
end
