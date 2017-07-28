class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    set_top
  end

  def push(item)
   self.top = item
   @stack[0] = item
  end
  

  def pop
   stack_top = @stack[-1]
   stack_top = @stack.slice(-1)
   stack_top
   set_top
  end
 

  def empty?
   if @stack.first == nil
    return true
   else
    return false
   end 
  end
 
 private
 
 def set_top
  if @stack.length < 1
   self.top = nil
  else
   self.top = @stack[-1]
  end
 end
end