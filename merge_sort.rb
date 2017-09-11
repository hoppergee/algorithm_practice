def merge(a,l,m,r)
  n1 = m-l+1
  left = Array.new(n1)
  n2 = r-m
  right = Array.new(n2)

  for i in 0...n1
    left[i] = a[l+i]
  end

  for i in 0...n2
    right[i] = a[m+1+i]
  end

  i=0
  j=0

  for k in l..r
    if i >= n1
      a[k] = right[j]
      j+=1
    elsif j >= n2
      a[k] = left[i]
      i+=1
    elsif left[i] > right[j]
      a[k] = right[j]
      j+=1
    else
      a[k] = left[i]
      i+=1
    end
  end
end

def merge_sort(a,l,r)
  if l < r
    m = l + (r - l)/2
    merge_sort(a, l, m)
    merge_sort(a, m+1, r)
    merge(a, l, m, r)
  end
end

a = [2,3,4,7,3,5]
b = [34,89,45,2,7,5]

merge_sort(a,)
