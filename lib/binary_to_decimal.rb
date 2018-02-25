# Kirsten schumy
# Ada Cohort 9
# CS Fundamentals, Week 3 HW
# Due 2/26/18

# Returns the decimal equivalent of provided binary_array.
#
# @param  binary_array  collection of 0's and 1's representing a binary number
# @return               the int equivalent of the binary number
def binary_to_decimal(binary_array)
  num_of_digits = binary_array.length
  int_equivalent = 0 # stores decimal equivalent to binary digits

  num_of_digits.times do |index|
    # Increments the int_equivalent by weight of the binary digit, which is
    # equal to 2 to the power of digit's position times the binary digit.
    int_equivalent += (2 ** (num_of_digits - index - 1)) * binary_array[index]
  end
  return int_equivalent
end
