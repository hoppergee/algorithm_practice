def bubble_sort arr
  n = arr.size
  for i in 0...n-1
    swapped = false
    for j in 0...n-i-1
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
    end
    break until swapped
  end
  return arr
end

p bubble_sort [2,34,5,67,34,1,7,9,34,69]
