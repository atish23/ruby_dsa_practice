def reverseArray(a,start,end1)
  while start < end1
    temp = a[start]
    a[start] = a[end1]
    a[end1] = temp

    start +=1
    end1 -=1
  end 
  a
end

def rotateArray(a,k)
  n = a.length
  return "Not Done" if k > n

  reverseArray(a, 0, k-1)
  reverseArray(a, k, n-1)
  reverseArray(a, 0, n-1)
  a
end
a = %w(10 20 30 40 50 60).map(&:to_i)
k = 7

p rotateArray(a,k)