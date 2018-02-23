# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

require 'awesome_print'
def binary_to_decimal(binary_array)
  decimal_result = 0
  length = binary_array.length
  binary_array.length.times do |x|
    decimal_result += (binary_array[length - 1] * 2**(x))
    length -= 1
  end
  decimal_result
end

# # testing method
# ap binary_to_decimal([1, 0, 1, 1, 0, 0, 0, 1])
# ap "10110001".to_i(2)
#
# ap binary_to_decimal([1, 0, 0, 1, 0])
# ap "10010".to_i(2)
#
# ap binary_to_decimal([1, 0 , 1])
# ap "101".to_i(2)
