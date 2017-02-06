def substring(word, dic)
  arr = []
  h = {}
   word.split(/\s/).map do |i|
     arr << i.match(/[\w]+/)[0]
   end
   for i in arr
     h[i.downcase] = dic.select{|a| a =~ /.*#{i.downcase}.*/}.count

   end
   for i in dic
     if arr.select{|a| a.downcase =~ /.*#{i}.*/}.count != 0
       h[i.downcase] = arr.select{|a| a.downcase =~ /.*#{i}.*/}.count
     end
   end

   print h
end
dic = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring("Howdy partner, sit down! How's it going?", dic)
