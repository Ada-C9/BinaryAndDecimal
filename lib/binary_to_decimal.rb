# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  sum = 0
  exponent = 7
  index = 0
  8.times do
    if binary_array[index] == 1
      sum += (2 ** exponent)
    end
    exponent -= 1
    index += 1
  end
  return sum
end

#improved verision:
def binary_to_decimal(binary_array)
  sum = 0
  8.times do |index|
    if binary_array[index] == 1
      sum += (2 ** (7 - index))
    end
  end
  return sum
end

