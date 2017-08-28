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
   if data === nil
	   return nil
   elsif root.title === data
	   return root
   elsif root.title !=data && root.left === nil
	   if root.right === data
		   return root.right
	   elsif root.right === nil
		   return nil
	   else
		   find(root.right, data)
	   end
   elsif root.title != data && root.left != nil
	   if root.left === data
		   return root.left
	   else
		   find(root.left, data)
	   end
   end
  end


  def delete(root, data)
	  if data.nil?
		return nil
	  else
		 node = self.find(root, data)
		  if node.nil?
			  return nil
		  else
			  node.title = nil
			  node.rating = nil
		  end
	  end
  end

  # Recursive Breadth First Search
  def printf(children=nil)
	array = [@root]
	output = []
	  while array.length > 0
		  node = array.shift
		  if node.left
			  array.push(node.left)
		  end
		  if node.right
			  array.push(node.right)
		  end
		  output.push("#{node.title}: #{node.rating}").join "/n"
	  end
	  output.each {|movie| puts movie}
  end
  end

