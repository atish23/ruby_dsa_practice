def towerOfBramha(n,from,to,via)
  if n < 1
    return 1
  end
  towerOfBramha(n-1,from,via,to)
  print "\nMove ", n ," disk from peg ", from, " to peg ", to
  towerOfBramha(n-1,via,to,from)
end

towerOfBramha(4,'A','C','B')