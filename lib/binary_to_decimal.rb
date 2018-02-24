# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  n = 0
  decimal_number = 0
  #moves through each element of the binary array
  binary_array.length.times do
    #finds number to add to the total sum for decimal number
    num_to_sum = (binary_array[-1] * 2) ** n
    binary_array.delete_at(-1)
    n += 1
    decimal_number += num_to_sum
  end
  #returns the number in base 10
  return "#{decimal_number} base 10"
end
