puts "enter value"
value = gets.chomp().to_f

puts "enter listing price"
price = gets.chomp().to_f

puts "number:"
number = gets.chomp().to_f


netcost = number * value
netprofit = number * price

#TAX
tax = ((0.025 * netcost ) + ( 0.025 * netprofit * (2 ** (Math.log10( price / value ) ) )))

puts "tax on sale is"
puts tax.to_i

#PROFIT
profit = netprofit - netcost - tax
if profit >= 0
  puts "( + ) net positive"
else
  return "( - ) net negative"
end
puts "total minus Tax and Market Value = " + profit.to_s

puts "Did you purchse?"
puts "Enter purchase price"
pricepurchase = gets.chomp().to_f



if pricepurchase == nil
 return "pure profit is"
 profit.to_i

else
 grossprofit = netprofit - tax - (pricepurchase * number)
 puts "gross profit is"
 puts grossprofit.to_i
end

#restart code
puts "restart? (yes/no)"
restart = gets.chomp().to_s
if restart == "yes"
 load 'market.rb'
else
 return "thank you"
end
