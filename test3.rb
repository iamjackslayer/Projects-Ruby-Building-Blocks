def stock_picker(arr_input)
  arr_whole = []
  for i in 0..arr_input.length-2
    for j in 1..arr_input.length-1
      next if i > j
      arr_temp = [arr_input[i],arr_input[j]]
      arr_whole << arr_temp
    end
  end
  arr_diff = []
  for i in arr_whole
    arr_diff << i[1] - i[0]
  end
  return [arr_input.index(arr_whole[arr_diff.index(arr_diff.max)][0]), arr_input.index(arr_whole[arr_diff.index(arr_diff.max)][1])]
end
p stock_picker([17,3,6,9,15,8,6,1,10])
