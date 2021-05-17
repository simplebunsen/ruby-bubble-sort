def bubble_sort(array)


  #worst case conditions
  max_sort_iterations = array.length - 1
  is_sorted = false

  #each iteration, ignore sort_i elements at the end since they will always be at the right positions

  for sort_i in 1..max_sort_iterations do
    break if is_sorted #TODO: implement is_sorted setter

    for i in 0..array.length - 1 - sort_i do
      array[i] < array[i+1] ? next : array[i], array[i+1] = array[i+1], array[i] #parallel assignment "swap"
    end   

  end


end

puts bubble_sort([4,3,78,2,0,2])