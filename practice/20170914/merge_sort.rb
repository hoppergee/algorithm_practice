def merge_sort arr
  return arr if arr.size < 2
  middle = arr.size / 2
  left = merge_sort arr[0...middle]
  right = merge_sort arr[middle...arr.size]
  merge left, right
end

def merge left, right
  sorted = []

  until left.empty? or right.empty?
    left.first <= right.first ? sorted << left.shift : sorted << right.shift
  end

  sorted + left + right
end

p merge_sort [2,4,5,34,12,67,4,28,45]
