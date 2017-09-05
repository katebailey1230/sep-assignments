require_relative 'node'

class MinBinaryHeapr
  attr_reader :elements
  
  def initialize(root)
  @root = root
  end
  
  def insert(node) 
   while @elements != nil 
     @elements << node
    sift_up(@elements.length - 1)
     @elements
   end
  end
  
  def order(i)
  @elements[(2i + 1)] = child.left  
  @elements[(2i + 2)] = child.right
  @elements[(child.right/2)] = parent
end
  
  def sift_up(i)
    if parent >= 0 and @elements[parent] > @elements[i]
      swap(parent, i)
      sift_up(parent)
    end
end
  
  
  
  def find(node, data)
    if node.title.nil? || data.nil?
	   return nil
    end
  end
 
    while @elements != nil && data != nil
      @elements.each do |node|
      index += 1
      break if node.title == data
        return @elements[i].title
    end
    return nil
  end
end



  
  def delete(node, data)
     if data.nil?
		return nil
     end
    
    self.delete(self.find(node, data))
      node.title = nil
      node.rating = nil
  end

    
     
  def print
    @elements.each {|element| puts element}
	@elements.push("#{node.title}: #{node.rating}").join "/n"
  end



def swap(i, j)
  @elements[i], @elements[j] = @elements[j], @elements[i]
end
 

def sift_up(i)
    if parent >= 0 and @elements[parent] > @elements[i]
      swap(parent, i)
      sift_up(parent)
    end
end
  
  
  