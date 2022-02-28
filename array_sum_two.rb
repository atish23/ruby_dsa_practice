def addArrays(a, b)
    if a.length == b.length
      n = a.length
    elsif a.length < b.length
      n = a.length
    else
      n = b.length
    end

    i = 0
    while i < n
      a[i] = a[i] + b[i]
      i +=1
    end
    b
end

A = [1, 2, 3,5]
B = [2, 5, 5,8,9]

p addArrays(A,B)