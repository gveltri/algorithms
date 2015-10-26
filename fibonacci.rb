class Fibonacci
  
  def initialize(n)
    @n = n
    @memo = {0 => 0, 1 => 1, 2 => 1}
  end

  def solve
    t1 = Time.now
    if (@n < 9000)
      answer = solve_memoized(@n)
      t2 = Time.now
      puts "#{answer} caluclated in #{t2-t1} milliseconds."
    end
    t1 = Time.now
    answer = solve_dynamically(@n)
    t2 = Time.now
    puts "#{answer} caluclated in #{t2-t1} milliseconds."
  end

  def solve_memoized(n)
    return @memo[n] if @memo[n]
    @memo[n] = solve_memoized(n-1) + solve_memoized(n-2)
  end

  def solve_dynamically(n)
    index = 2
    sequence = [0,1,1]
    while index < n
      index+=1
      sequence.push(sequence[index-1] + sequence[index-2])
    end
    sequence[n]
  end
  
end


Fibonacci.new(1000).solve
