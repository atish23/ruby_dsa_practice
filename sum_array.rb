def sumArray(arr)
  sum = 0

  arr.each do |a|
    sum += a
  end
  sum
end

puts sumArray([1,2,3,4])