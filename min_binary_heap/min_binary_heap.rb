require_relative 'node'

class MinBinaryHeap

attr_accessor :root

  def initialize(root)
   @root = root
  end

  def insert(root, node)
    children = [root]
    next_row = []
    children.each do |child|
      if child.right == nil
        child.right = node
        child = node.parent
        placed = node
      elsif child.left == nil
        child.left = node
        child = node.parent
        placed = node
      else
        next_row << child.left
        next_row << child.right
      end
      if placed != nil
        self.order(placed)
      else
      self.insert(next_row, node)
    end

  def order(node)
  if node != root
    if node.rating < node.parent.rating
      m = node.parent.parent if node.parent.parent != nil
      f = node.parent
      g = node.left
      h = node.right

      if g.left = node
        t = node.parent.right
      else
        t = node.parent.left
      end

      f.parent = node
      g.parent = node if g != nil
      h.parent = node if h != nil

      if m != nil && m.right == f
        m.right = node
      end
      if m != nil && m.left == f
        m.left = node
      end
      if m == nil
        @root = node
      end
      node.parent = m
end
  self.order(node)
  end
  end
  end


  def find(node, target)
    if node === nil?
	   return nil
   elsif node.title = target
     return node
   else
     x = find(node.right, target)
     y = find(node.left, target)
     if x != nil
       return x
       if y != nil
         return y
       else
         return nil
    end
end
end


  def delete(root, data)
     if data.nil?
		return nil
	  else
		 target = find(node, data)
		  if target.nil?
			  return nil
		  else
			  target.title = nil
			  target.rating = nil
		  end
	  end
  end


  def printf(children=nil)
    if children == nil
      if @root
        children = [@root]
      else
        return nil
      end
    end
    next_row = []
    children.each do |child|
      puts "#{child.title}: #{child.rating}"
      next_row.push(child.left) if child.left != nil
      next_row.push(child.right) if child.right != nil
    end
    if next_row.size == 0
      return nil
    else
      printf(next_row)
    end
  end
end

private

def swap(i, j)
  @elements[i], @elements[j] = @elements[j], @elements[i]
end

#def child.left
  #@elements[(2i + 1)]
#end

#def child.right
  #@elements[(2i + 2)]
#end

#def parent
  #@elements[(child.right/2)]
#end
end
end
