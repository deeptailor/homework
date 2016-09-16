class Queue
  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar << el
  end

  def dequeue
    @ivar.shift
  end

  def show
    @ivar
  end

end

# q = Queue.new
# q.enqueue(1)
# q.enqueue(2)
# q.enqueue(3)
# q.dequeue
# p q.show
