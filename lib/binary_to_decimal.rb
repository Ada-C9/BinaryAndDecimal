# Transform a 8 bits number into a decimal number using a method based on the material covered in class.


#_____Step 1:
# Fill new array with 8 random numbers from 0 to 1.
random_binary_number = []
8.times {  random_binary_number << rand(0..1)}


#_____Step 2:
def binary_to_decimal(binary_array)
  # Reverse array to facilitate the calculations:
  binary_array = binary_array.reverse

  # Loop trough each index of the reversed binary number and multiply it by 2 to the power of it's index.
  sum = 0
  8.times {|i| sum += binary_array[i] * (2 ** i)}

  return sum
end
