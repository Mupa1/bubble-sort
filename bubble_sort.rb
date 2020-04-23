# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def bubble_sort(array)
  n = array.length - 1
  array.each do
    swapped_number = false
    n.times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped_number = true
      end
    end
    n -= 1
    break unless swapped_number
  end
  array
end

# rubocop:disable Metrics/AbcSize
def bubble_sort_by(array)
  n = array.length - 1
  array.each do
    swapped_number = false
    n.times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped_number = true
      end
    end
    n -= 1
    break unless swapped_number
  end
  array
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

bubble = bubble_sort_by(%w[one two three four]) do |a, b|
  a.length - b.length
end

print bubble
