class Knapsack

  attr_accessor :objects_array, :capacity

  def initialize(objects, capacity)
    @objects_array = objects
    @capacity = capacity
  end

  def solve
    solve_recursively(0,@capacity)
  end

  def solve_recursively(i, x)
    
    return 0 unless @objects_array[i]
    
    if x - @objects_array[i][:size] < 0
      solve_recursively(i+1, x)
    else     
    [ solve_recursively(i+1, x),
      @objects_array[i][:value] + solve_recursively(i+1, x-@objects_array[i][:size]) ].max
    end
    
  end
  
end
