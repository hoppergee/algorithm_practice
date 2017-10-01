def quick_sort arr, lo=0, hi=nil
  hi ||= arr.size - 1
  if lo < hi
    pivots = partition arr, lo, hi
    l, r = pivots[0], pivots[1]
    quick_sort arr, lo, l-1
    quick_sort arr, r+1, hi
  end
  return arr
end

def partition arr, lo, hi
  pivot = arr[lo]
  i = lo + 1
  lt = lo
  gt = hi

  while i <= gt
    if arr[i] < pivot
      arr[i], arr[lt] = arr[lt], arr[i]
      i += 1
      lt += 1
    elsif arr[i] > pivot
      arr[i], arr[gt] = arr[gt], arr[i]
      gt -= 1
    else
      i += 1
    end
  end

  return lt, gt
end

p quick_sort [3,12,45,7,4,9,56]
