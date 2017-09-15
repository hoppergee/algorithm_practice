def insert_sort arr
  n = arr.size
  0.upto n-1 do |i|
    min = i
    i.upto n-1 do |j|
      if arr[j] < arr[min]
        min = j
      end
    end
    arr[i], arr[min] = arr[min], arr[i]
  end
  return arr
end

p insert_sort [2,4,6,34,1,56,9,37]
