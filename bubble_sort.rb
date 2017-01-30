# Bubble Sort for Module 1

# Pseudocode:
#
#  1) Until there is no swap throughout the entire array, keep sorting for
#     index[n] through (array.length) - 1.
#  2) If index[0] is greater than the next element in the array, swap index
#     value, tell the computer there was a swap, and increment the index
#     counter.
#  3) Otherwise, increment the index counter.
#  4) After each full pass, the index counter should be reset to 0, and as long
#     as there is a swap, the loop will keep running.

# Code:

class BubbleSort
  def sort(collection)
    total_swaps = collection.length - 1
    did_not_swap = 0

    until did_not_swap == total_swaps
      did_not_swap = 0
      total_swaps.times do |index|
        if collection[index] > collection[index + 1]
          collection[index], collection[index + 1] = collection[index + 1], collection[index]
        else
          did_not_swap += 1
        end
      end
    end
    puts collection
  end
end

sorter = BubbleSort.new

puts sorter.sort(["d", "b", "a", "c"])
