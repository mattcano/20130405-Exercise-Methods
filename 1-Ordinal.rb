def convert_to_ordinal(int)
  special_cases = {
    "1" => "st",
    "2" => "nd",
    "3" => "rd"
  }

  num_ord = int.to_s

  if special_cases.has_key?(num_ord[-1]) && num_ord[-2] != "1"
    num_ord << special_cases[num_ord[-1]]  
    return num_ord  
  end

  num_ord << "th"

  return num_ord

end

#Call method as below to test 1-100
#(1..100).each{|i| puts convert_to_ordinal(i)}