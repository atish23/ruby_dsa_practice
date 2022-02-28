# Optimize prime number program
# For primary number we need to just check till the squre root of the given number
# as after the square root of number all values are duplicate, to avoid duplicate iteration we added condition like i*i <=n
# and then we are storing the boolean value in array for the prime numbers square
class Sieve
  def sieve(n, prime_duplicates)
    i = 2
    while i * i <= n
      if !(prime_duplicates[i])
        j = i * 2
        while j <= n
          prime_duplicates[j] = false
          j += i
        end
      end
      i += 1
    end

    (2..n).each { |i| puts i if prime_duplicates[i].nil? }
  end
end

s = Sieve.new
n = 40
prime_duplicates = Array.new(n + 1)
s.sieve(n, prime_duplicates)
