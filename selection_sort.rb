def selection_sort arr
  0.upto(arr.size-1) do |i|
    min = i
    (i+1).upto(arr.size-1) do |j|
      min = j if (arr[j] <=> arr[min]) == -1
    end
    arr[i], arr[min] = arr[min], arr[i]
  end
  return arr
end

p selection_sort [2,3,54,6,3,7,68,45,3,25]
