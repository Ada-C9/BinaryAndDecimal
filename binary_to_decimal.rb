# Write a method named binary_to_decimal that receives as input parameter an array of size 8.
nums = Array.new(8)
def binary_to_decimal (nums)
  # The array is randomly filled with 0’s and 1’s
  nums << rand(0..1)
  # calculate the decimal value for this binary number using the
  nums.each do |num|
    decimal << num.to_s(10)
  end
  # return decimal
  return decimal
end

puts nums.binary_to_decimal
