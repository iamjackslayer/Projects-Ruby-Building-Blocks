def caesar_cipher(text,num)
  arr  = text.split('')
  for i in arr do
    next if i =~ /[^\w]/
    num.times do
      i.next!
    end
  end
  return arr.join
end
print caesar_cipher("What a string!",5)
