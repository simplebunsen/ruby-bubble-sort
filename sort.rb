def bubble_sort(array)


  #calculate-no-more-than-worst-case conditions
  max_sort_iterations = array.length - 1
  is_sorted = false


  for sort_i in 1..max_sort_iterations do
    break if is_sorted #TODO: implement PROPER is_sorted setter
    is_sorted = true #boo, hacky

    #each iteration, ignore sort_i elements at the end since they will always be at the right positions
    for i in 0..array.length - 1 - sort_i do
      array[i] < array[i+1] ? next : (array[i], array[i+1] = array[i+1], array[i]; is_sorted = false) #parallel assignment "swap"
    end   

  end

  return array

end

p bubble_sort([4,3,78,2,0,2])