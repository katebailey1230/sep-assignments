require_relative 'node'

class OpenAddressing
 attr_reader :nodes
 
  def initialize(size)
   @nodes = Array.new(size)
   @node_count = 0.0
  end

  def []=(key, value)
    index = self.index(key, @nodes.length)
    if @nodes[index].nil?
       @nodes[index] = Node.new(key, value)
       @node_count += 1
    elsif @nodes[index].key === key
       if @nodes[index].value != value
          @nodes[index].value = value
       if self.next_open_index(0) === -1 
           self.resize
       end
    end
      else
       index = self.next_open_index(index)
          if index === -1
              self.resize
              self.[]=(key, value)
              @node_count += 1
          elsif @nodes[index].nil?
              @nodes[index] = Node.new(key, value)
              @node_count += 1
          elsif @nodes[index].key === key && @nodes[index].value != value
                @nodes[index].value = value
          end
    end     
end


  def [](key)
   index = index(key, @nodes.size)
   current_index = index
   
   while current_index < @nodes.size or current_index != index
    if @nodes[current_index].key == key
     break
    elsif @nodes.size == current_index + 1
     current_index == 0
    else
     current_index +=1
    end
   end
   @nodes[current_index].value
   

  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   return key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
   while index <= @nodes.length
    if index === @nodes.length
     index = -1
     break
    elsif @nodes[index].nil?
     break
    else
     index += 1
    end
   end
   index
  end

  # Simple method to return the number of items in the hash
  def size
   return @nodes.length
  end

  # Resize the hash
  def resize
    new_size = size * 2
    expanded_hash = Array.new(new_size)
    @nodes.each do |node|
      if node != nil
        expanded_hash[index(node.key, new_size)] = node
      end
    end
   @nodes = expanded_hash
  end
	
 def load_factor
	 @node_count = 0.0
	 load_factor = 0.0
	 
	 @nodes.each do |node|
		 if node != nil
			 @node_count += 1
		 end
	 if @node_count > 0
		 load_factor = !node_count / @nodes.size
	 end
	 load_factor
 end
	
	
	 def print
		 puts "The load factor is #{self.load_factor}."
		 puts "The location of #{self.value} is #{self.index(self.key, self.length)}."
	 end
end
end