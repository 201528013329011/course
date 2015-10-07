# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr != nil
    i = 0
    sum = 0
    until i == arr.length
      sum += arr[i]
      i += 1
    end
    return sum
    else return 0
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length >= 2
    for i in 1..arr.length - 1
      if arr[0] < arr[i]
        arr[0], arr[i] = arr[i], arr[0]
      end
    end
    for i in 2..arr.length - 1
      if arr[1] < arr[i]
        arr[1], arr[i] = arr[i], arr[1]
      end
    end
    return arr[0] + arr[1] 
  elsif arr.length == 1
    return arr[0]
  else 
   return 0 
  end     
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length >= 2
    x= 0
    for i in 0..arr.length - 1
      for j in i + 1..arr.length - 1
        if arr[i] + arr[j] == n
          x = 1
        end
      end    
    end
  end
  if arr.length == 1 || arr.length == 0
    return false
  elsif x == 1
    return true
  else 
    return false
  end  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == '' then return false end
  if (s =~ /\A[bcdfghjklmnpqrstvwxyz]/i) == 0
    return true
  else
    return false
  end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == '' then return false end
  if s == '0' then return true end
  if (s =~ /[^01]/) != nil
    return false
  else
    if (s =~ /00\Z/) != nil
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn == '' then raise(ArgumentError) end
    if price <= 0 then raise(ArgumentError) end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(newisbn)
    @isbn = newisbn
  end
  def price=(newprice)
    @price = newprice
  end
  def price_as_string
    @price = format("$%.2f",@price)
  end
end
