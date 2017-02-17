def merge_sort(array_to_sort)
  # Base case
  return array_to_sort if(array_to_sort.length == 1)
  
  # Find the middle point of the array, and split it into 2
  mid = array_to_sort.length / 2 - 1
  front = merge_sort(array_to_sort[0..mid])
  back = merge_sort(array_to_sort[(mid + 1)..-1])
  
  result = []
  # Array(front + back) to convert the lone integers into array format
  temp_array = Array(front) + Array(back)
  
  # Extract the smallest element one by one until temp_array is empty
  while(temp_array.length != 0)
    result += Array(temp_array.min)
    temp_array.delete(temp_array.min)
  end
  
  return result
end

merge_sort([5, 4, 9, 11, 2, 3, 6, 12, 0, 1])