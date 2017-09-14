def insert_sort arr
  n = arr.size - 1
  0.upto(n) do |i|
    min = i
    i.upto(n) do |j|
      if arr[j] < arr[min]
        min = j
      end
    end
    arr[i], arr[min] = arr[min], arr[i]
  end
  return arr
end

p insert_sort [2,4,34,1,56,94,45,9,27]
