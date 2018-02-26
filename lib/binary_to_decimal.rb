# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# Create a random binary array

binary_array = []
8.times { binary_array << rand(0..1)}

def binary_to_decimal(binary_array)
  # Reverse the array to be able to use it in the loop for calculations
  binary_array = binary_array.reverse
  decimal = 0
  # Loop over the indexes in the array and multiply them by 2 at the power of the index used
  8.times {|i| decimal += binary_array[i] * (2 ** i)}
  return decimal
end
