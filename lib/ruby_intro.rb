# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each do |n| sum += n end
  sum
end

def max_2_sum(arr)
  ascending_order_arr = arr.sort.reverse
  sum(ascending_order_arr.slice(0, 2))
end

def sum_to_n?(arr, n)
  if arr.length < 2
    return false
  end
  seen = []
  arr.each do |num|
    complement = n - num
    if seen.include?(complement)
      return true
    end
    seen.push(num)
  end
  false
end

# Part 2

def hello(name)
  %Q{Hello, #{name}}
end

def starts_with_consonant?(s)
  /^[bcdfghjklmnpqrstvwxyz]/i.match?(s)
end

def binary_multiple_of_4?(s)
  if s == "0" || s == "00"
    return true
  end
  if s.length > 2
    return /^[01]+00$/.match?(s)
  end
  false
end

# Part 3

class BookInStock
  def initialize(id_num, value)
    @isbn = id_num
    @price = value
    if isbn == '' || price <= 0
      raise ArgumentError
    end
  end

  def isbn()
    @isbn
  end
  
  def isbn=(id_num)
    @isbn = id_num
  end

  def price()
    @price
  end

  def price=(value)
    @price = value
  end

  def price_as_string()
    if /\...$/.match?(@price.to_s)
      return %Q{$#{@price}}
    end
    if /\..$/.match?(@price.to_s)
      return %Q{$#{@price}0}
    end
    return %Q{$#{@price}.00}
  end
end
