require_relative 'AVL_node'

class AVLTree

  attr_reader :root_node, :array 

  def initialize(array)
    @array = array
    @root_node = create_tree_from_sorted(array)
  end

  def create_tree_from_sorted(array)
    
    mid_index = (array.length/2).floor
    root_node = AVLNode.new(array[mid_index])
    
    assign_parents_recursively(array, 0, mid_index-1, root_node) if (mid_index-1) >= 0
    assign_parents_recursively(array, mid_index+1, array.length-1, root_node) if mid_index+ 1 < array.length
    
    root_node
  end

  private

  def assign_parents_recursively(array, starting_index, last_index, parent)
    
    mid_index = ((starting_index+last_index)/2).floor
    current_node  = AVLNode.new(array[mid_index], parent)

    assign_parents_recursively(array, starting_index, mid_index-1, current_node) if (mid_index-1) >= starting_index
    assign_parents_recursively(array, mid_index+1, last_index, current_node) if mid_index+ 1 <= last_index
    
  end

  def to_string
    
    height = Math.log2(@array.length).floor
    node_queue[@root_node]
    
    ((@array.length/2).floor).times { output << " " }
    output << "#{@root_node.value}"
    ((@array.length/2).floor).times { output << " " }
    output << "\n"

    if array.length > 1
      level = 1
      
      while !node_queue.empty?
        current_node = node_queue.shift
        
      end
    end
    
  end
  

end
