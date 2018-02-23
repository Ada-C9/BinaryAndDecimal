# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_result = 0
  idx = (binary_array.length - 1)
  power_of_two = 0

  binary_array.length.times do
    decimal_result += binary_array[idx] * (2 ** power_of_two)
    idx -= 1
    power_of_two += 1

  end
  return decimal_result
end

#my_array = [1, 1, 0, 0, 0, 0, 1, 1]
#puts binary_to_decimal(my_array)
