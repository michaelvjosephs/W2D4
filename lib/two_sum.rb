# O(n^2) because we have a nested loop.

def bad_two_sum?(arr, target)
  arr.length.times do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end

  false
end

# O(n*logn) because we iterate through the array (n) and call binary search (logn)
def okay_two_sum?(arr, target)
  new_arr = arr.sort

  new_arr.each_with_index do |el, idx|
    return true if new_arr[idx + 1..-1].bsearch { |x| x == target - el }
  end

  false
end

# O(n) -- we iterate through arr and each iteration takes constant time
def good_two_sum?(arr, target)
  # values we're looking for to complete a pair
  missing_values = Hash.new(false)

  arr.each do |el|
    return true if missing_values[el]
    # we are now "looking for" target - el....
    missing_values[target - el] = true
  end

  false
end
