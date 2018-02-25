# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  total = 0
  index = 0
  size = binary_array.length
  bit_value = size - 1

  size.times do
    element = binary_array[index]
    total += element * (2**bit_value)
    bit_value -= 1
    index+=1
  end
  #convert to float (decimal) type.
  return total.to_f
end
