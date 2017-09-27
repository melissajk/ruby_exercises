
class CircularQueue
  attr_reader :queue
  
  def initialize(size)
    @queue = Array.new(size, nil)
  end
  
  def enqueue(num)
    if queue.include?(nil)
      queue.delete_at(queue.index(nil))
    else
      queue.shift
    end
    queue << num
  end
  
  def dequeue
    return nil if queue.all?(&:nil?)
    oldest_element = nil
    
    queue << nil
    if queue.include?(nil)
      oldest_element = queue.reject(&:nil?).first
      queue.delete(oldest_element)
    else
      queue.shift
    end
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil