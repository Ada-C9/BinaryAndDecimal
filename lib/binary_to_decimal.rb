# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  digits = binary_array.length
  decimal = 0
  digits.times do |i|
    dec = binary_array[-1]*(2**i)
    decimal += dec
    binary_array.delete_at(-1)
  end
  return decimal
end
