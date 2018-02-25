# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.


# binary_array = Array.new(8) { rand(0..1)}

# this method will take in the array of 8 bits randomly created
# and output the decimal value.
# def binary_to_decimal(binary_array)
#   # raise NotImplementedError
#   i = 0
#   expected_decimal = []
#   binary_array.reverse.each do |index|
#     expected_decimal << index * 2 ** i
#     i += 1
#   end
#   return expected_decimal.inject(:+)
# end


# a little unsure how to update the method to not use Ruby functions.
# Shruti mentioned that times loop is okay. So I updated the above
# method to be a times loop insted.
def binary_to_decimal(binary_array)
  # raise NotImplementedError
  i = 0
  expected_decimal = []
  new_binary_array = Array.new(binary_array.reverse)

  8.times do |index|
    expected_decimal << new_binary_array[index] * 2 ** i
    i += 1
  end
  return expected_decimal.inject(:+)
end


# # UI to test the above code
# expected_decimal = binary_to_decimal([1, 0, 0, 0, 0, 0, 0, 0])
# puts expected_decimal
