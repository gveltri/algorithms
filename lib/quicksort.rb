class Quicksort

  def initialize(array)
    @starting_array = array
  end

  def solve
    quicksort(@starting_array, 0, @starting_array.length-1)
  end

  def quicksort(array, starting_index, last_index)
    
    pivot_index = starting_index
    wall_index = starting_index + 1
    current_index = starting_index + 1

    while current_index < last_index + 1

      if array[current_index] < array[pivot_index]
        placeholder = array[wall_index]
        array[wall_index] = array[current_index]
        array[current_index] = placeholder
        wall_index+=1
      end

      current_index+=1          
      
    end

    placeholder = array[wall_index-1]
    array[wall_index-1] = array[pivot_index]
    array[pivot_index] = placeholder

    # left
    if ((wall_index-1) - starting_index > 1)
      quicksort(array, starting_index, wall_index-1)
    end
    
    # right
    if wall_index < last_index
      quicksort(array, wall_index, last_index) 
    end
    
    array
        
  end

end
