class Stack
  attr_reader :ivar
  def initialize
    @ivar = []
  end

  def add(el)
    @ivar << el
  end

  def remove
    @ivar.pop
  end

  def show
    @ivar
  end

end

# test = Stack.new
# test.add(5)
# test.add(4)
# test.add(3)
# test.remove
# p test.show
