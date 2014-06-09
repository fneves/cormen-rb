module Three
  module Algorithms

    def Algorithms.threesum_makes_n(array, n)
      array.sort!
      result = []

      array.each_with_index do |item, index|
        first = array[index]
        k = index + 1
        j = array.length - 1
        while k < j
          sum = first + array[k] + array[j]

          if sum == n
            result.push([first, array[k], array[j]])
          end
          k += 1 if sum <= n
          j -= 1 if sum > n
        end

      end
      result
    end

  end
end