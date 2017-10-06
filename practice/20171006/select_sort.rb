def select_sort arr
  0.upto(arr.size - 1) do |i|
    min = i
    (i + 1).upto(arr.size - 1) do |j|
      min = j if arr[j] < arr[min]
    end
    arr[min], arr[i] = arr[i], arr[min]
  end
  return arr
end

p select_sort [2,5,1,56,3,78,3,61,4]
