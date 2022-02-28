class Prime
  def is_prime(n)
    return false if n <= 1

    i = 2
    while i * i <= n
      if n % i == 0
        return false
      end

      i += 1
    end
    true
  end
end

p = Prime.new
n = 40

n.times { |value| puts value if p.is_prime(value) }
