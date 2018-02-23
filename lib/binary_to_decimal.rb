binary_array = []
8.times do
  binary_array << rand(0..1)
end

def binary_to_decimal(binary_array)
  sum = 0
  i = 1
  binary_array.length.times do
    index = (binary_array.length - i)
    temp_decimal = binary_array[(binary_array.length-(index + 1))] * (2 ** index)
    sum += temp_decimal
    i += 1
  end
  return sum
end
