require_relative 'node'

class MinBinaryHeapr
  attr_accessor :elements
  
  def initialize(root, node=nil)
    @root = root
    node ? @elements = [root, node] : @elements = [root]
  end

  def swap(i, j)
  @elements[i], @elements[j] = @elements[j], @elements[i]
end
  
  def sift_up(i)
  
while @elements[i] != nil    
  if ((i + 1) >= 0) && @elements[i + 1] > @elements[i]
    swap((i + 1), i)
    sift_up(i + 1)
  end
end
  end
  
  def insert(root, node)
      @elements = []
      @elements << root
      @elements << node
      self.sift_up(@elements.length - 1)
      @elements
    end
  end


  def find(node, data)
    while !@elements.nil? && !data.nil?
    @elements.each do |node|
      index += 1
      break if node.title == data
      return @elements[i].title
    end
  end
    
def delete(node, data)
  return nil if data.nil?

  self.find(node, data)
if node.title == data
  node.title = nil
  node.rating = nil
end
end

def print
  @elements.each { |element| puts element }
  @elements.push("#{node.title}: #{node.rating}").join '/n'
end
end
  