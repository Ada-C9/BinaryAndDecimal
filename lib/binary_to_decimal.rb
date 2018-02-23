# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
binary_array = []
8.times do
  binary_array << rand(0..1)
end

def binary_to_decimal(binary_array)
  multi_num = []
  # loop through the array multiplying by 2^x
  x = 7
  while x >= 7
    binary_array.each do |num|
      number = num * (2 ** x)
      multi_num << number
      x -= 1
    end
  end
  # sum all results
  decimal = multi_num.sum

  return decimal
end
