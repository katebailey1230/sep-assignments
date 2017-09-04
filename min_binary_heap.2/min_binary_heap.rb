require_relative 'node'

class MinBinaryHeap
  
  def initialize(root)
   @root = root
  end

  def insert(root, node) 
   @elements = Array.new
    
   while @elements != nil 
    @elements << node
    if node.rating > root.rating
       @elements
    elsif node.rating < root.rating
      swap(root, node)
      @elements
    end
  end
  end
  
  def find(node, data)
    if node.title === nil? || data.nil?
	   return nil
    end
 
    while @elements != nil && data != nil
    @elements.each do |node|
      index += 1
      break if node.title == data
    end
     @elements[i].title
    end
    nil
  end
end

  
  def delete(node, data)
     if data.nil?
		return nil
	  else
		 node = self.find(node, data)
		  if node.nil?
			  return nil
		  else
			  node.title = nil
			  node.rating = nil
		  end
	  end
  end
 
  
  def print
    @elements.each {|element| puts element}
	@elements.push("#{node.title}: #{node.rating}").join "/n"
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
  
  
  