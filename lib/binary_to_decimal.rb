# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
require 'pry'
def binary_to_decimal(binary_array)
  total = 0
  8.times do |i|
    power = 7 - i
    total += binary_array[i] * (2**power)
    # binding.pry
  end
  return total
  raise NotImplementedError
end
