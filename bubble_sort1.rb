def bubble_sort(a)
  n = a.length
  for i in 0...n-1
    for j in 0...n-i-1
      if a[j]>a[j+1]
        a[j], a[j+1] = a[j+1], a[j]
      end
    end
  end
  return a
end

p bubble_sort [2,7,4,34,89,56,3,8]
