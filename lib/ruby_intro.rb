# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each { |x| result += x }
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  if !arr.empty?
    return arr[0] if arr.length == 1
    
    sorted_arr = arr.sort
    max1 = sorted_arr.pop
    max2 = sorted_arr.pop
    max1 + max2
  else
    0
  end
end

def sum_to_n? arr, n
  arr.each_with_index do |v, i|
    return true if v + arr[i+1] == n if arr[i+1]
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s =~ /^[^aeiuo\W]+/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    true
  else
    s =~ /^[10]*00$/
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(s)
    if s =~ /^0*[a-zA-Z\d\-]+$/i
      @isbn = s
    else
      raise ArgumentError
    end
  end
  
  def price
    @price
  end
  
  def price=(n)
    raise ArgumentError if n <=0
    @price = n
  end
  
  def price_as_string
    "$#{'%0.2f' % @price}"
  end
end
