require 'minitest/autorun'
require 'minitest/reporters'
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.


#Creates randomly filled array with 0's and 1's, 8 times.
binary_array = []
8.times do
  binary_array << rand(0..1)
end

#Create method named binary_to_decimal to return decimal value. input is binary array.
def binary_to_decimal(binary_array)
  bit_num = binary_array.length
  decimal_num = 0
  bit_num.times do |index|
    decimal_num += binary_array[(bit_num - index) - 1] * (2 ** index)
  end
  return decimal_num
end
