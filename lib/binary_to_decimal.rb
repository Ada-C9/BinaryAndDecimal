# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.


def binary_to_decimal(binary_array)
  # raise NotImplementedError
expected_decimal = nil
all_nums = []
binary_array.reverse!

binary_array.each_with_index do |element, index|
   expondent = (element * (2 ** index))
   all_nums << expondent
  end
  expected_decimal = all_nums.inject(0, :+)
  return expected_decimal
end
