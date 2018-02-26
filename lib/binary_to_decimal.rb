# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# require 'pry'
def binary_to_decimal(binary_array)
   index = 0
   decimal_value = 0

   binary_array.length.times do
     decimal_value += (binary_array[7-index]) * 2 ** index
     index += 1
  # reverse_arr = binary_array.reverse
  # # when I binary_array.reverse.each the decimal value kept returning to high. Why?
  # reverse_arr.each do |bit|
  #
  #   decimal_value += bit * (2 ** pwr)
  #   pwr += 1
  #   # binding.pry

  end
  # raise NotImplementedError
  return decimal_value
end
