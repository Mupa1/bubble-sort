def bubble_sort(arr)
    n = arr.length
    loop do
        swapped_number = false

        (n-1).times do |i|
            if arr[i] > arr[i + 1] 
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swapped_number = true
            end
        end

        break if not swapped_number
    end 

    arr
end

puts bubble_sort([2, 0, 5, 1,4])