binary_array = [1,0,1,0,1,0,1,0]


def binary_to_decimal(binary_array)
total = 0
multiplier = 1
binary_array.each do |x|

	total = total + multiplier * x
	multiplier = 2 * multiplier
  binary_array.reverse
 end
