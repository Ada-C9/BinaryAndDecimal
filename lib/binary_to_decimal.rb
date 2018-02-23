# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)       # 10101010
  binary_array = binary_array.to_s.split('').map(&:to_i)

  exponent = 7
  results = []

  binary_array.each do |num|
    results << num * (2 ** exponent)
    exponent -= 1
  end

  decimal = 0

  results.each do |num|
    decimal += num
  end
  return decimal
end

puts binary_to_decimal(10101010)
