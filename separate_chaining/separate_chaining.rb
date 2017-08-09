#DEF LOOKUP(key)
    #COMPUTE the hash code for key, ASSIGN to index
    #GET array[index], ASSIGN to head
    #IF head exists THEN
        #WHILE the next link in the chain exists
            #IF the key at the current link equals key THEN
                #RETURN this link's value
            #END IF
            #SET the current link to the next link in the chain
        #END WHILE
    #END IF
    #RETURN nothing
#END DEF

require_relative 'linked_list'
require_relative 'node'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @hash = Array.new(size)
  end

  def []=(key, value)
   hash_index = self.index(key, @hash.length)
   llist = LinkedList.new
   
   if @hash[hash_index] == nil
    llist.add_to_front(key, value)
    @hash[hash_index] = llist
   elsif @hash[hash_index].size == 5
    self.resize
    self.[]=(key, value)
    self[key] = value
   else
    @hash[hash_index].add_to_front(key, value)
  end
  end

  def [](key)
   hash_index = self.index(key, @hash.length)
   new_list = @hash[hash_index]
   current_node = new_list.head
   match_node = nil
   
   while current_node != nil and current_node.key != key
    current_node = current_node.next
   end
   match_node = current_node
   match_node.value
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   key.sum % size
  end

  # Calculate the current load factor
  def load_factor
   current_load === 0
   
   @hash.each do |hash|
    if hash != nil
     current_node = hash.head
     while current_node != nil
      current_load += 1
      current_node = current_node.next
     end
    end
  end
   @max_load_factor = (current_load / @hash.size)
   if @max_load_factor > 0.7
    self.resize
    self.load_factor
   else
    @max_load_factor
   end
  end
end
   
  # Simple method to return the number of items in the hash
  def size
   @hash.length
  end

  # Resize the hash
  def resize
   old_hash = @hash
   @hash = Array.new((old_hash.size * 2))
   
   old_hash.each do |hash|
    if hash != nil
     current_node = hash.head
     while current_node != nil
      self.[]=(current_node.key, current_node.value)
      current_node = current_node.next
  end
    end
   end
  end
