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
	 if root.nil? || data.nil?
		 return nil
	 else
		 target_node = find(root, data)
		 target_node.nil? ? nil : target_node.title = nil
	 end
  end
   

  # Recursive Breadth First Search
  def printf(children=nil)
	  tree = [root]
	  tree.each do |node|
		  tree << node.left if node.left
		  tree << node.right if node.right
		  node.left << node.children.left if node.children.left
		  node.left << node.children.right if node.children.right
		  node.right << node.children.left if node.children.left
		  node.right << node.children.right if node.children.right
	  end
	  puts tree.inspect 
  end
  
