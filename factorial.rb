def factorial(n)
  if n <= 1
    return 1
  end
  n * factorial(n-1)
end

p factorial(4)