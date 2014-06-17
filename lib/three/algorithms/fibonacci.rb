module Three
  module Algorithms
    module Fibonacci


      def self.calculate(n)
        result = [0]
        return result if  n <= 0
        prev_index = 1
        i = 1
        until i > n
          result.push(i)
          i = result[prev_index] + result[prev_index - 1]
          prev_index += 1
        end
        result
      end
    end
  end

end

puts Three::Algorithms::Fibonacci.calculate(100).inspect