def convert_to_phrase(arr)

  phrase = ""
  items = arr.size
  counter = 2

  arr.each do |element|
    phrase << element
    if counter == items
      phrase << " and "
    elsif counter < items
      phrase << ", "
    else
      return phrase
    end
    counter += 1
  end

end

arr = ["Peanut Butter", "Jelly"]

puts convert_to_phrase(arr)