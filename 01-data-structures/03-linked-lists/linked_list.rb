require_relative 'node'


class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
   if @tail == nil
      @tail = node
      @head = node
    else
      @tail.next = node
      @tail = node
    end
  end
 
  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
   if @head != @tail
    current = @head
    while current.next != tail
     current = current.next
    end 
    current.next = nil
    @tail = current
   else
    @tail = nil
    @head = @tail
    @tail
    end 
  end

  # This method prints out a representation of the list.
  def print
   current = @head
   puts current.data
   while current.next != nil
    current = current.next
    puts current.data
   end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
   current_node = @head
    previous_node = nil

    if node == @head
      @head = current_node.next
    elsif node == @tail
      @tail = current_node.next
    else
      while current_node != node
        previous_node = current_node
        current_node = current_node.next
      end
      previous_node.next = current_node.next
    end
  end
 

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
   if @head == nil
    @head = node
   else
    previous = @head
    @head = node
    @head.next = previous
   end
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
   if previous = @head
    @head = @head.next
   else
    @head = nil
    @tail = @head
   end
   previous
  end
end
  