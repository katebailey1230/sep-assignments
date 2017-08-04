class HashClass

 require_relative 'hash_item'
 
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
   hash_item = HashItem.new(key, value)
   i = index(key, size)
   
   if @items[i] == nil
    @items[i] = hash_item
   elsif @items[i].key != key
    self.resize
    self[key] = value
   elsif (@items[i].key == key) && (@items[i].value != value)
    self.resize
    @items[i] = value
   end 
  end


  def [](key)
   item = @items[index(key, size)]
   item.nil? ? nil : item.value
  end

  def resize
   size = @items.length * 2
   new_array = Array.new(size)
   @items.each do |i|
    if i != nil
     
    end
   end

  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
   @items.length
  end
end