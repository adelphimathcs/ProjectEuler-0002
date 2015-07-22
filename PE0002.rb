#Fibonacci class to handle generating fib numbers
#uses memoization to turn generating fib nums from O(2^n) to O(n^2)
class Fibonacci

  def initialize
    @fibNums = [0,1]
  end

  def getFib(n) 
    return -1 if n < 0 #error handling
    return @fibNums[n] unless @fibNums[n].nil?

    num = getFib(n-1) + getFib(n-2)

    @fibNums[n] = num
    num
  end

  def genFib(n)
    return -1 if n < 0 #error handling
    return n if n < 2

    genFib(n-1) + genFib(n-2)
  end

  def sumEvenFib
    sum = 0
    index = 1

    while getFib(index) < 4000000 do 
      sum += getFib(index) unless getFib(index) % 2 != 0
      index += 1
    end

    sum
  end

end

myFib = Fibonacci.new
puts myFib.sumEvenFib