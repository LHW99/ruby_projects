base_array = [0, 3, 2, 1, 4, 5, 6, 7]

def merge_sort(array)
  n = array.length
  split = n / 2
  narray1 = array[0..split-1]
  narray2 = array[split..-1]
  nnarray1 = narray1[0..(narray1.length / 2) - 1]
  nnarray2 = narray1[(narray1.length / 2)..-1]
  nnarray3 = narray2[0..(narray2.length / 2) - 1]
  nnarray4 = narray2[(narray2.length / 2)..-1]
  carray1 = two_sort(nnarray1)
  carray2 = two_sort(nnarray2)
  carray3 = two_sort(nnarray3)
  carray4 = two_sort(nnarray4)
  farray1 = two_array(carray1,carray2)
  farray2 = two_array(carray3,carray4)
  final_array = two_array(farray1,farray2)
end

def two_sort(double)
  if double[0] > double[1]
    double[0], double[1] = double[1], double[0]
  else 
    return double
  end
end

def two_array(arra1, arra2)
  final = []
  arr1 = arra1.to_a
  arr2 = arra2.to_a
  i = 0
  j = 0
  until i == arr1.length && j == arr2.length
    if arr1[i] == nil || arr2[j] == nil
      if arr1[i] == nil
      final.push(arr2[j])
      j+=1
      elsif arr2[j] == nil
      final.push(arr1[i])
      i+=1
      end
    elsif arr1[i] != nil && arr2[j] != nil
      if arr1[i] > arr2[j]
      final.push(arr2[j])
      j+=1
      elsif arr1[i] < arr2[j]
      final.push(arr1[i])
      i+=1
      end
    end
  end
end

puts two_array([0,6], [5,9])

# split array into half
# keep splitting halves until unsplittable
# compare elements in those mini arrays and sort
# combine arrays until it reforms 