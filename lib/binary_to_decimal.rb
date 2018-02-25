# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# my_binary_array = [0, 1, 1, 0, 1, 1, 0, 1]

def binary_to_decimal(binary_array)
  results_array = []
  results_array << binary_array[7] * (2**0)
  results_array << binary_array[6] * (2**1)
  results_array << binary_array[5] * (2**2)
  results_array << binary_array[4] * (2**3)
  results_array << binary_array[3] * (2**4)
  results_array << binary_array[2] * (2**5)
  results_array << binary_array[1] * (2**6)
  results_array << binary_array[0] * (2**7)
  sum = 0
  results_array.each do |e|
    sum += e
  end
  return sum
  # raise NotImplementedError
end

# puts binary_to_decimal(my_binary_array)

# My pseudocode from class:
# Come up with random 8-bit number made of zeros and ones (ex: 01101101)
# Starting from the right-most (aka least-significant) digit, take that digit, and multiply it by the result of 2^0, then write down the result
# Ex: 1 * (2^0) = 1
# Take the next number to the left, multiply it by the result of 2^1 then write down the result
# Ex: 0 * (2^1) = 0
# Take 3rd number from the left, multiply by the result of 2^2, write down result
# 1 * (2^2) = 4
# Take 4th number from the left, multiply by the result of 2^3, write down result
# 1 * (2^3) = 8
# Take 5th number from the left, multiply by the result of 2^4, write down result
# 0 * (2^4) = 0
# Take 6th number from the left, multiply by the result of 2^5, write down result
# 1 * (2^5) = 32
# Take 7th number from the left, multiply by the result of 2^6, write down result
# 1 * (2^6) = 64
# Take 8th number from the left, multiply by the result of 2^7, write down result
# 0 * (2^7) = 0
#  Add up the sum of all the results
# 1 + 0 + 4 + 8 + 0 + 32 + 64 + 0 = 109
