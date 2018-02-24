require "pry"
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  # raise NotImplementedError
  reversed_array = binary_array.reverse
  transformations = reversed_array.each_with_index.map do |binary_num, index|
    binary_num * (2 ** index)
  end
  return transformations.sum
end
