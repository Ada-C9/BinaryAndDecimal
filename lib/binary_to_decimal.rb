# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
binary_array = []
8.times do
  binary_array << rand(0..1)
end

def binary_to_decimal(binary_array)
  # raise NotImplementedError
  n =  binary_array.length - 1
  decimal_number = 0
  binary_array.length.times do |i|
    decimal_number += binary_array[i] * 2 ** n
    n -= 1
  end
  return decimal_number
end
