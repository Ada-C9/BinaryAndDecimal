# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# def binary_to_decimal(binary_array)
#   raise NotImplementedError
# end

def binary_to_decimal(random_array)

  results = []
  exponent = 7

  random_array.each do |num|
    # puts "exponent before conversion #{exponent}"

    conversion = num * 2**exponent
    # puts "Current result #{conversion}"

    results << conversion

  exponent -= 1
  # puts "exponent after conversion #{exponent}"
  end

  return results.sum

end


# random_array = Array.new(8) { rand(0..1) }
random_array = [1, 0, 0, 1, 1, 0, 0, 1]
puts "This is the random array #{random_array}"

puts "These are your binary numbers in decimal form #{binary_to_decimal(random_array)}"
