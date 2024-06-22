# this is the main functinon
def colorful?(number)
  digits = digits(number)
  #digits below is from code above
  products = digit_subset_products(digits)
  products == products.uniq
end

# this is the helper function 1 that split a number into a single digit array.
# e.g. 2356 => [2,3,5,6]
def digits(number)
  digits = []
  number.to_s.chars.each do |digit|
    digits << digit.to_i
  end
  digits
end

# this is the helper function 2 that calculate the products and add them into an array.
def digit_subset_products(digits)
  products = []
  # i is the length of this array.
  (1..digits.size).each do |i|
    #j is the index of this array starting from 0.
    (0..(digits.size-i)).each do |j|
      product = 1
      # calls helper function 1 here, digits[j...(j + i)] selects a subarray from the digits array.
      # This means digits[j...(j + i)] will take a slice of the array starting at index j and including up to but not including index j + i.
      # digit_subset represents each element (digit) in the subarray during the iteration.
      digits[j...(j + i)].each do |digit_subset|
        product *= digit_subset
      end
      products << product
    end
  end
  products
end

p colorful? (263)
p colorful? (236)
p colorful? (36585)
