# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.


def binary_to_decimal(binary_array)

  decimal_value = 0

  if binary_array[(0)] == 1
    decimal_value =  decimal_value + 128
  end

  if binary_array[(1)] == 1
    decimal_value =  decimal_value +  64
  end

  if binary_array[(2)] == 1
    decimal_value =  decimal_value + 32
  end

  if binary_array[(3)] == 1
    decimal_value =  decimal_value + 16
  end

  if binary_array[(4)] == 1
    decimal_value =  decimal_value + 8
  end

  if binary_array[(5)] == 1
    decimal_value =  decimal_value + 4
  end

  if binary_array[(6)] == 1
    decimal_value =  decimal_value + 2
  end

  if binary_array[(7)] == 1
    decimal_value =  decimal_value + 1
  end

  return decimal_value

  raise NotImplementedError

end
