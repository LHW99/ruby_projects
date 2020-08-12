puts "enter number"

begin
user_input = Integer(gets)
  a = 0
  i = 0
  j = 1
  fibo = [0,1]
  puts fibo[0]
  puts fibo[1]
  if user_input > 2
    while a < user_input - 1
      sum = fibo[i] + fibo[j]
      puts sum
      fibo.push(sum)
      i+=1
      j+=1
      a+=1
    end
  end
rescue nil
end
