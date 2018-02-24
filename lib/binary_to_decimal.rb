# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  #  raise NotImplementedError
  i = 0
  result = 0
  binary_array.length.times do

    result += (binary_array[7 - i]) * 2 ** i
    i += 1
  end
  return result
end


# binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
# binary_to_decimal(binary_array)
