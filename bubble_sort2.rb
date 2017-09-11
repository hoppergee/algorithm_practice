def bubble_sort(a)
  n = a.size
  for i in 0...n-1
    swapped = false
    for j in 0...n-i-1
      if a[j] > a[j+1]
        a[j], a[j+1] = a[j+1], a[j]
        swapped = true
      end
    end
    if swapped == false
      break
    end
  end
  return a
end

p bubble_sort [3,4,65,7,8,4,245,78,23]
