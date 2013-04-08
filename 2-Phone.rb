def convert_to_phone_number(num)

  num_phone = num.to_s

  num_phone.insert(-5, "-")
  num_phone.insert(3, ")")
  num_phone.insert(0, "+1 (")

  return num_phone
end

puts convert_to_phone_number(3107130421)
puts convert_to_phone_number(8056282266)

