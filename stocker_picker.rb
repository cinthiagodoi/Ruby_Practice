stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices = [])
  initial_profit = 0
  best_days = []
  stock_prices.each.with_index do |value, first_index|
    next if first_index == 0
    0.upto(first_index - 1) do |second_index|
      compare_value = stock_prices[second_index]
      potential_profit = value - compare_value
      
      if potential_profit > initial_profit 
        initial_profit = potential_profit
        best_days = [second_index, first_index]
  
      end
    end  
  end 
  best_days
end 

 p stock_picker([17,3,6,9,15,8,6,1,10])
