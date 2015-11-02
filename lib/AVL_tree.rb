require_relative 'AVL_node'

class AVLTree

  attr_reader :tree, :array 

  def initialize(array)
    @array = array
    @tree = create_tree_from_sorted(array)
  end

  def create_tree_from_sorted(array)
    
    mid_index = (array.length/2).floor
    root_node = AVLNode.new(array[mid-index])
    
    if array.length > 0
      assign_parents_recursively(array, 0, array.length-1, parent)
            
    end

    root_node
  end

  private

  def assign_parents_recursively(array, starting_index, last_index, parent)
    mid_index = (array.length/2).floor
    current_node  = AVLNode.new(array[mid-index], parent)

    
  end

end
