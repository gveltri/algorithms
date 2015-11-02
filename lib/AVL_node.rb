class AVLNode

  attr_accessor :left, :right, :parent, :value

  def initialize(value, parent=nil)
    @value = value
    @parent = parent
    @left = nil
    @right = nil
  end
  
end
