# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  length = binary_array.length
  new_array = binary_array.reverse
  decimal = []
  i = 0
  length.times do
    decimal << new_array[i] * 2 ** i
    i += 1
  end
  return decimal.reduce(0, :+)
  raise NotImplementedError
end
# comment
