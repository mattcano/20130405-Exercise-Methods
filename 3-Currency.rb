def convert_to_currency(num)

  num_curr = num.round(2).to_s

  if num_curr[-2] == "." then num_curr << "0" end

  length = num_curr.length - 3
  counter = -4

  (length/3).times{
    counter -= 3
    num_curr.insert(counter, ",")
    counter -= 1  
  }

  num_curr.insert(0, "$")

  return num_curr
end

puts convert_to_currency(1234567890)
puts convert_to_currency(1234.3)
puts convert_to_currency(1.345)
puts convert_to_currency(1223.12)
