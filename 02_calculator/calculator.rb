def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.sum
end

def multiply(a, b)
  a * b
end

def multiply_several(array)
  result = 1
  array.each { |i|  result *= i}
  result
end

def power(a, b)
  result = a
  (b - 1).times { result *= a }
  result
end

def factorial(a)
  result = 1
  a.times { |i| result *= i + 1}
  result
end
