require 'awesome_print'
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_val = 0
  length = binary_array.length
  i = -1
  # length of binary_array is 8. iteration should stop at -8
  while i > -(length+1)
    # iterates from least significant bit to the most significant bit
    # (2**-(i+1)) starts at 2**0 and ends at 2**7
    decimal_val += (binary_array[i] * (2**-(i+1)))
    i -= 1
  end
  return decimal_val
  # raise NotImplementedError
end
