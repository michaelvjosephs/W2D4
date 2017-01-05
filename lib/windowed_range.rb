require_relative 'stacks_and_queues'

# O(n*w) where n is array length, w is window_size
# quadratic in worst case where w is about n/2

def max_windowed_range(arr, window_size)
  current_max_range = nil
  arr.length.times do |start_idx|
    break if start_idx + window_size > arr.length
    min, max = arr[start_idx...(start_idx + window_size)].minmax
    current_max_range = max - min if current_max_range.nil? || max - min > current_max_range
  end

  current_max_range
end

def max_windowed_range_fast(arr, window_size)
  current_max_range = nil

  range_queue = MinMaxStackQueue.new

  arr.each do |el|
    range_queue.enqueue(el)
    range_queue.dequeue if range_queue.size > window_size
    window_range = range_queue.max - range_queue.min
    current_max_range = window_range if current_max_range.nil? || window_range > current_max_range
  end

  current_max_range
end
