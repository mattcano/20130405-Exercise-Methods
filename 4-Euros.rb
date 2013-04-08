def convert_to_euros(usd)

  usd_to_eur = 0.77

  eur = (usd * usd_to_eur).round(2).to_s

  if eur[-2] == "." then eur << "0" end

  length = eur.length - 3
  counter = -4

  (length/3).times{
    counter -= 3
    eur.insert(counter, ",")
    counter -= 1  
  }

  eur << " EUR"

  return eur
end


puts convert_to_euros(100)
puts convert_to_euros(100000000)