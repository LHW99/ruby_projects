days = [17,3,6,9,15,8,6,1,10]

def stock_picker(days)
  i=0
  j=1
  best_trade=[0,0]
  while i < (days.length - 1)
    until (days.length - j) = 0
      if days[j] - days[i] > best_trade[1] - best_trade[0]
        best_trade = [days[i],days[j]]
      end
    j+=1
    end
    i+=1
    j=i+1
  end
  puts ("Buy Price: #{best_trade[0]}, 
  Sell Price: #{best_trade[1]}, 
  Profit: #{best_trade[1] - best_trade[0]}")
end