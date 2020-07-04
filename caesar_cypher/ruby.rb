require 'pry'

def cypher(string, number)
  split_string = string.split('')
  i = 0
  while i < number
    i+=1
  split_string.map! {|letter| 
    if letter == 'z'
      letter = 'a'
    elsif letter =='Z'
      letter = 'A'
    elsif letter == ' '
      letter = ' '
    else letter.next
    end}
  end
  puts split_string.join("")
end