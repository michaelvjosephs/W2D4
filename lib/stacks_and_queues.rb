class MyQueue

  def initialize
    @store = []
  end

  def enqueue(el)
    store << el
  end

  def dequeue
    store.shift
  end

  def peek
    store.first
  end

  def size
    store.length
  end

  def empty?
    store.empty?
  end

  private

  attr_accessor :store
end

class MyStack
  def initialize
    @store = []
  end

  def pop
    store.pop
  end

  def push(el)
    store << el
  end

  def peek
    store.last
  end

  def size
    store.length
  end

  def empty?
    store.empty?
  end

  private

  attr_accessor :store
end

class MinMaxStack
  def initialize
    @store = []
    @max_stack = MyStack.new
    @min_stack = MyStack.new
  end

  def pop
    popped = store.pop
    max_stack.pop if popped == max_stack.peek
    min_stack.pop if popped == min_stack.peek
    popped
  end

  def push(el)
    store << el
    max_stack.push(el) if max_stack.empty? || el >= max
    min_stack.push(el) if min_stack.empty? || el <= min
  end

  def peek
    store.last
  end

  def size
    store.length
  end

  def empty?
    store.empty?
  end

  def max
    max_stack.peek
  end

  def min
    min_stack.peek
  end

  private

  attr_accessor :store, :max_stack, :min_stack
end

class MinMaxStackQueue

  def initialize
    @in_stack = MinMaxStack.new
    @out_stack = MinMaxStack.new
  end

  def enqueue(el)
    in_stack.push(el)
  end

  def dequeue
    return out_stack.pop unless out_stack.empty?

    push_in_to_out
    out_stack.pop
  end

  def size
    in_stack.size + out_stack.size
  end

  def empty?
    in_stack.empty? && out_stack.empty?
  end

  def max
    [in_stack.max, out_stack.max].reject(&:nil?).max
  end

  def min
    [in_stack.min, out_stack.min].reject(&:nil?).min
  end

  private

  attr_reader :in_stack, :out_stack

  def push_in_to_out
    until in_stack.empty?
      out_stack.push(in_stack.pop)
    end
  end

end
