def sum_with_for(min, max)
  sum_of_numbers = 0
  if min > max
    return -1
  end

  for x in (min..max)
    sum_of_numbers += x
  end
  return sum_of_numbers
end
p sum_with_for(1,4)

def sum_with_while(min, max)
  if min>max
    return -1
  end

  sum = 0
  while min <= max
    sum += min
    min += 1
  end
  return sum
end
p sum_with_while(1,4)
