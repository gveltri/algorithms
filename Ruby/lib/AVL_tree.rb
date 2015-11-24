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
    
    if (mid_index-1) >= 0
      assign_parents_recursively(array, 0, mid_index-1, root_node)
    end
    
    if mid_index+ 1 < array.length
      assign_parents_recursively(array, mid_index+1, array.length-1, root_node)
    end
    
    root_node
  end


  def assign_parents_recursively(array, starting_index, last_index, parent)
    
    mid_index = ((starting_index+last_index)/2).floor
    current_node  = AVLNode.new(array[mid_index], parent)
    if current_node.value < parent.value
      parent.left = current_node
    else
      parent.right = current_node
    end

    assign_parents_recursively(array, starting_index, mid_index-1, current_node) if (mid_index-1) >= starting_index
    assign_parents_recursively(array, mid_index+1, last_index, current_node) if mid_index+ 1 <= last_index
    
  end

  def to_string
    output = ''
    level = 0
    node_queue = [@root_node]
    nodes_in_curr_level = 0
    node_count = @array.length

    ((node_count-1)/2).to_i.times { output.concat(" ") }
    
    while node_queue.length > 0
      
      curr_node = node_queue.shift
      nodes_in_curr_level+=1
      output.concat(curr_node.value.to_s)

      length_of_space = ((node_count-2**level)/(2**level+1)).to_i
      length_of_space = 1 if length_of_space == 0
      length_of_space.times { output.concat(" ")}
      
      node_queue << curr_node.left if curr_node.left
      node_queue << curr_node.right if curr_node.right

      if nodes_in_curr_level == 2**level
        
        nodes_in_curr_level = 0
        level+=1
        
        output.concat("\n")

        length_of_space = ((node_count-2**level)/(2**level+1)).to_i
        length_of_space.times { output.concat(" ")}
 
      end
    end


    puts output
        
  end
  

end
