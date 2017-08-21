require_relative 'node'

class BinarySearchTree
 

  def initialize(root)
   @root = root
  end

  def insert(root, node)
   temp = root
   
   while temp
    if node.rating < temp.rating
     if temp.left
      temp = temp.left
     else
      temp.left = node
      break
     end
    end
   
    if node.rating > temp.rating
     if temp.right
      temp = temp.right
     else
      temp.right = node
      break
     end
    end
   end
  end
   
  # Recursive Depth First Search
  def find(root, data)
   if root && root.title == data
    return root
   end
    
   if root.left
    if root.left.title != data
     find(root.left, data)
    else
     return root.left
    end
   elsif root.right
    if root.right.title != data
     find(root.right, data)
    else
     return root.right
    end
   else
    return nil
   end
  end
end

  def delete(root, data)
  
   #must use parent and child because if you delete parent, child must become parent, etc.
   
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end
