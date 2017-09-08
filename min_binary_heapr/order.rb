class Order
  attr_accessor :parent
  attr_accessor :child
  attr_accessor :elements

  def initialize(parent, elements)
	  @elements = elements
	  @parent = parent
	  @child = nil
  end
end