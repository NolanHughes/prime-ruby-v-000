def prime?(num)
  if num <= 1
    return false
  end

  Math.sqrt(num).to_i.downto(2).each do |i|
    if num % i == 0
      return false
    end
  end

  true
end

require 'benchmark'
require 'bigdecimal/math'

# calculate pi to 10k digits
puts Benchmark.measure { BigMath.PI(10_000) }
