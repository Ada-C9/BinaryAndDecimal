# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.


def binary_to_decimal(binary_array)
  decimal = 0

  8.times do |num|
    decimal += binary_array[-(num+1)] * 2 ** num
  end

  return decimal
  raise NotImplementedError
end

# # Main block written on one line
# def binary_to_decimal(binary_array)
#   decimal = 0
#
#   8.times { |num| decimal += binary_array[-(num+1)] * 2 ** num }
#
#   return decimal
#   raise NotImplementedError
# end
#
# # Every variable written out
# def binary_to_decimal(binary_array)
#   decimal = 0
#
#   8.times do |num|
#
#     digit = binary_array[-(num+1)]
#     multiplier = 2 ** num
#
#     decimal += digit * multiplier
#   end
#
#   return decimal
#   raise NotImplementedError
# end
