require 'minitest/autorun'
require 'minitest/reporters'
# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
#Creates randomly filled array with 0's and 1's, 8 times.

#Create method named binary_to_decimal to return decimal value. input is binary array.

# binary = []
# 8.times do
#   binary << rand(0..1)
# end

def binary_to_decimal(binary_array)
  subtotals = []

  binary_array.length.times do |i|
    subtotals << binary_array[i] * ((2) ** ((binary_array.length - 1) - i))
  end

  decimal_number = 0
  subtotals.each { |subtotal| decimal_number += subtotal }
  return decimal_number
end
