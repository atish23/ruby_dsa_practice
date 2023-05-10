class Recursive

  def bar(x,y)
    return 0 if y==0

    (x+ bar(x,y-1))
  end

  def foo(x,y)        
    return 1 if y==0

    bar(x, foo(x,y-1))
  end
end

puts Recursive.new.foo(3,5)