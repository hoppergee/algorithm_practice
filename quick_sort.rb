def quick_sort(a, lo, hi)
  if lo < hi
    temp = partition(a, lo, hi)
    l = temp[0]
    r = temp[1]
    quick_sort(a, lo, l-1)
    quick_sort(a, r+1, hi)
  end
  return a
end

def partition(a, lo, hi)
  pivot = a[lo]
  i = lo + 1
  lt = lo
  gt = hi

  while(i <= gt)
    if a[i] < pivot
      temp = a[lt]
      a[lt] = a[i]
      a[i] = temp
      lt += 1
      i += 1
    elsif a[i] > pivot
      temp = a[i]
      a[i] = a[gt]
      a[gt] = temp
      gt -= 1
    else
      i += 1
    end
  end
  return lt, gt
end

p quick_sort([12,3,1,2,4,70,89,3,3],0,8)

