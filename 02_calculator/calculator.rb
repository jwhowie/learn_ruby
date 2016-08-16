def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(sum_array)
  total = 0
  sum_array.each {|number| total += number}
  return total
end
