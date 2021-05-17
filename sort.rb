def bubble_sort(array)

  #don't calculate more iterations than necass
  max_sort_iterations = array.length - 2 #subtract 2 since were making our iteration count 0 based instead of 1 based
  is_sorted = false


  for m in 0..max_sort_iterations do
    break if is_sorted #TODO: implement PROPER is_sorted setter

    #after m iteration, ignore m elements at the end since they will always be at the right positions
    #in the first iteration, m is 0 since we didn't finish m=1 iteration yet
    for i in 0..array.length - 2 - m do
      is_sorted = true unless is_sorted #boo, hacky (but less so)

      #parallel assignment "swap", also sets "not sorted" if we change anything
      array[i] < array[i+1] ? next : (array[i], array[i+1] = array[i+1], array[i]; is_sorted = false) 
    end   

  end

  return array

end

p bubble_sort([4,3,78,2,0,2])