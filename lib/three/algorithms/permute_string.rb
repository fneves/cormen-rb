module Three
  module Algorithms

    def Algorithms.permute(any_string)
      self.permute_aux('', any_string)
    end

    def Algorithms.permute_aux(so_far, rest)
      return puts so_far if rest.empty?
      (0..rest.size - 1).each do |index|
        next_string = so_far + rest[index]
        remaining = rest.slice(0, index) + rest.slice(index + 1, rest.size)
        Algorithms.permute_aux(next_string, remaining)
      end
    end

  end
end