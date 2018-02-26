# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
    length = binary_array.length
    exponent = 0
    index = -1
    total = 0

    length.times do
      total += array[index] * (2 ** exponent)
      index -= 1
      exponent += 1
    end
    total
  end


  puts binary_to_decimal([0, 0, 0, 0, 1, 0, 1, 1])
  puts binary_to_decimal([0, 0, 1, 1, 1, 1, 1, 1])
  puts binary_to_decimal([1, 0, 1, 0, 0, 1, 1, 1])

end
