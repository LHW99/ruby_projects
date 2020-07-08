arr = [5,4,1,3,2]

def bubble_sort(numbers)
  i=0
 while numbers != numbers.sort 
  while i<numbers.length - 1
    if numbers[i]>numbers[i+1]
      numbers[i],numbers[i+1] = numbers[i+1],numbers[i]
      i+=1
    else i+=1
    end
  end
  i=0
end
puts numbers
end