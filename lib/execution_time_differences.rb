def slow_my_min(arr)
  arr.each do |el|
    return el if arr.all? { |x| x < el }
  end

  nil

end


def my_min(arr)
  min = nil
  arr.each do |el|
    min = el if min.nil? || el < min
  end

  min
end

def slow_largest_contiguous_subsum(arr)
  subarrays = []
  arr.length.times do |i|
    (i...arr.length).each do |j|
      subarrays << arr[i..j]
    end
  end

  subarrays.map { |subarray| subarray.inject(&:+) }.max
end

def largest_contiguous_subsum(arr)
  biggest_subsum = arr.max
  current_subsum = 0

  arr.each do |el|
    reset = current_subsum + el <= 0
    current_subsum = reset ? 0 : current_subsum + el

    biggest_subsum = current_subsum if current_subsum > biggest_subsum && !reset
  end

  biggest_subsum

end
