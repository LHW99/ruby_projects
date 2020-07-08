arr = [5,4,1,3,2]

def bubble_sort(numbers)
  i=0
  final = numbers.sort
 until numbers == numbers.sort 
  while i<numbers.length - 1
    if numbers[i]>numbers[i+1]
      numbers[i],numbers[i+1] = numbers[i+1],numbers[i]
      i+=1
    else i+=1
    end
end
puts numbers
end



=begin
look at first two numbers in array
shift higher number to the right by one
continue down array
reset and start over
continue until there are no further changes to be made
=end