class HashClass

 require_relative 'hash_item'
 
  def initialize(size)
    @items = Array.new(size)
  end

  def []=(key, value)
    hashed_item = @items[index(key, size)]
    if hashed_item.nil?
      @items[index(key, size)] = HashItem.new(key, value)
    elsif hashed_item.key != key
      while @items[index(key, @size)].key != nil && @items[index(key, size)].key != key
        self.resize
        self[key] = value
      end
     elsif hashed_item.key === key && hashed_item.value != value
      self.resize
      hashed_item.value = value
    end
  end
  


  def [](key)
   item = @items[index(key, size)]
   if @items[item].key == key 
    return @items[item].value
  end
  end

  def resize
   old_array = @items
        @items = Array.new(old_array.length * 2)
        old_array.each do |pair|
            unless pair.nil?
                if @items[index(pair.key, @items.length)].nil?
                    self[pair.key] = pair.value
                elsif @items[index(pair.key, @items.length)].key != key
                    self.resize
                    self[pair.key] = pair.value
                elsif @items[index(pair.key, @items.length)].key === key && @items[index(pair.key, @items.length)].value != value
                    self.resize
                    @items[index(pair.key, @items.length)].value = pair.value
                end
            end
        end
    end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   return key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
   return @items.length
  end
end

private

def index_from_key(key)
 return key.sum % @items.length
end