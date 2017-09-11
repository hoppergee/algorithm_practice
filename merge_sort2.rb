def merge_sort(arr)
  return arr if arr.size < 2
  middle = arr.size / 2
  left = merge_sort(arr[0...middle])
  right = merge_sort(arr[middle..arr.size])
  merge(left, right)
end

def merge(left, right)
  sorted = []

  while left.any? && right.any?
    if left.first >= right.first
      sorted.push right.shift
    else
      sorted.push left.shift
    end
  end

  sorted + left + right
end

p merge_sort [2,4,5,63,34,1,2,9,67]
