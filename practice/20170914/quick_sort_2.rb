def quick_sort arr, lo=0, hi=nil
  hi ||= arr.size - 1
  return arr if lo >= hi
  pivot = partition arr, lo, hi
  quick_sort arr, lo, pivot-1
  quick_sort arr, pivot+1, hi
  return arr
end

def partition arr, lo, hi
  pivot = arr[lo]
  i,j = lo+1, hi

  while true
    i += 1 while arr[i] <= pivot and i < hi
    j -= 1 while arr[j] > pivot and j > lo
    break if i >= j
    arr[i], arr[j] = arr[j], arr[i]
  end
  arr[lo], arr[j] = arr[j], arr[lo]
  j
end

p quick_sort [3,45,1,38,71,7,4,44]
