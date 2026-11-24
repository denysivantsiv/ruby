puts "Завдання 9. Кількість мінімальних елементів"
numbers = [7, 2, 9, 2, 5, 2, 8]
puts "Початковий масив: #{numbers.inspect}"

# Спосіб 1 while та if
min1 = numbers[0]
i = 1
while i < numbers.length
  if numbers[i] < min1
    min1 = numbers[i]
  end
  i += 1
end

count1 = 0
i = 0
while i < numbers.length
  if numbers[i] == min1
    count1 += 1
  end
  i += 1
end
puts "Спосіб 1 (while + if): #{count1} (мінімум = #{min1})"

# Спосіб 2 Ітератори
min2 = numbers.min
count2 = numbers.count { |n| n == min2 }
puts "Спосіб 2 (ітератор): #{count2} (мінімум = #{min2})"