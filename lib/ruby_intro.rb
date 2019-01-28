# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|s,x| s + x }
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    m0 = arr.min - 1
    m1 = m0
    arr.each do |x| 
      if x > m0
        m1 = m0
        m0 = x
      elsif x > m1
        m1 = x
      end
    end
    m0 + m1
  end
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end
  cnts = Hash.new(0)
  arr.each {|x| cnts[x]+=1}
  res = false
  arr.each do |x|
    if x*2==n
      res = cnts[x]>1
    elsif cnts[n-x] > 0
      res = true
    end
  end
  res
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /^[a,e,i,o,u,A,E,I,O,U]/
    return false
  end
  return s =~ /^[A-z]/
end

def binary_multiple_of_4? s
  if s.length < 3
    return s=="0"
  end
  (s =~ /^[1,0]+$/) && (s =~ /00$/) != nil
end

# Part 3

class BookInStock
  def initialize s, price
    if s=="" || price <= 0
      raise ArgumentError.new
    else
      @isbn= s
      @price = price
    end
  end
  attr_accessor :isbn 
  attr_accessor :price
  def price_as_string; "$%.2f" % @price; end
end
