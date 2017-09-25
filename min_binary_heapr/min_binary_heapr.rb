require_relative 'node'

class MinBinaryHeapr
  attr_reader :elements

  def initialize(node=nil)
  node ? @elements = [node] : @elements = []
  @size = @elements.length
  end

  def swap(i, j)
    @elements[i], @elements[j] = @elements[j], @elements[i]
end

def insert(root, node)
  if @elements
  @size += 1
  @elements[@size - 1] = node
  order(@elements.length - 1)
  end
end

def parent(node_index)
  (node_index / 2).round - 1
end

def order(node_index)
  return if node_index == 0

  parent_index = parent(node_index)

  if @elements[node_index].rating < @elements[parent_index].rating
    swap(node_index, parent_index)
    order(parent_index)
  end
end



def find(root, data)
  root = nil

  @elements.each do |element|
    if element.title == data
      root = element
      break
    end
  end
  root
end

def delete(root, data)
  if data.nil?
  return nil
  else
   node = self.find(root, data)
    if node.nil?
      return nil
    else
      root.title = nil
      root.rating = nil
    end
  end
end

  def print
    str = ""
    @elements.each { |element| str << "{element.title}: {element.rating}\n"}
    puts str
end
end
