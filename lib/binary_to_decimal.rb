# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_value = 0
  # Note: The input array has to be reversed in order for the
  # algorithm I devised in class to work.
  binary_array.reverse!
  binary_array.each_with_index do |bit, index|
    bit_value = bit * (2 ** index)
    decimal_value = decimal_value + bit_value
  end
  return decimal_value
end
