class BFSForBinarySearchTree


  
end

#pseudocode:

  # BFS(first, target)
  
  # queue = [first]
  # parents { first: null }

  # while (queue is not empty and current_node is not the target)

  #   current_node = queue.dequeue
#   if current_node.left : queue.enqueue(current_node.left)
#                        : parents[current_node.left] = current_node
 #     if current_node.right : queue.enqueue(current_node.right)
#                        : parents[current_node.right] = current_node
# end while loop

#  if current_node == target: return true
#  else: return false
#
# traverse pseudo linked list dictionary to return the path
# number of traversed nodes is also the level at which target was found
