#Fibonacci class to handle generating fib numbers
#uses memoization to turn generating fib nums from O(2^n) to O(n^2)
class Fibonacci

  def initialize
    @fib_nums = [0,1]
  end

  def get_fib(n) 
    return -1 if n < 0 #error handling
    return @fib_nums[n] unless @fib_nums[n].nil?

    num = get_fib(n-1) + get_fib(n-2)

    @fib_nums[n] = num
    num
  end

  def gen_fib(n)
    return -1 if n < 0 #error handling
    return n if n < 2
    
    gen_fib(n-1) + gen_fib(n-2)
  end

  def sum_even_fib
    sum = 0
    index = 1

    while get_fib(index) < 4000000 do 
      sum += get_fib(index) unless get_fib(index).odd?
      index += 1
    end

    sum
  end

end

myFib = Fibonacci.new
puts myFib.sum_even_fib