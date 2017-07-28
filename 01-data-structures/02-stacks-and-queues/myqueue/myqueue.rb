class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
    @tail = @queue[-1]
  end

  def enqueue(element)
    @queue
    @head = @queue[0]
    @tail = @queue[0]
    array = @queue.insert(-1, element) + @queue
    @tail = element
    @head = @queue[0]
  end

  def dequeue
    if @queue.length > 0
    value = @queue.slice!(0)
    @head = @queue[0]
    value
   end
  end 

  def empty?
    if @queue.length == 0
      return true
    else
      return false
    end
  end
end