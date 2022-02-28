def maxSubArraySum(a)
  size = a.length
  i = 0
  tempMax = 0
  maxSum = a[0]

  while i < size
      tempMax += a[i]

      if maxSum < tempMax
          maxSum = tempMax
      end
      if tempMax < 0
          tempMax = 0
      end
      i +=1
  end
  maxSum
end

a = [-2,-1,-9]
p maxSubArraySum(a)
