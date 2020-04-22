def bubble_sort(arr)
  loop do
    swapped_number = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr [i + 1], arr[i]
        swapped_number = true
      end
    end
    break unless swapped_number
  end
  arr
end

def yield_bubble_sort(arr)
  loop do
    swapped_number = false
    (arr.length - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr [i + 1], arr[i]
        swapped_number = true
      end
    end
    break unless swapped_number
  end
  arr
end
