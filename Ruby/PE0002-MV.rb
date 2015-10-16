# Ruby Solution to Project Euler 2 Using Enumerations
# Michael Vessia

class Fibonacci
  class << self
    include Enumerable

    def each
      return to_enum unless block_given?
      a = b = 1
      loop do
        yield a
        a, b = b, a + b
      end
    end
  end
end

puts Fibonacci.take_while { |i| i < 4E6 }
  .select(&:even?)
  .reduce(:+)
