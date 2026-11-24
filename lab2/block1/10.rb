puts "Завдання 10. Пошук індексів елементів, менших за лівого сусіда"
numbers = [8, 3, 7, 2, 9, 4, 1, 6]
puts "Початковий масив: #{numbers.inspect}"

# Спосіб 1 while та if
result1 = []
i = 1
while i < numbers.length
  if numbers[i] < numbers[i - 1]
    result1 << i
  end
  i += 1
end
puts "Спосіб 1 (while + if): #{result1.inspect}"

# Спосіб 2 Ітератор each_with_index
result2 = []
numbers.each_with_index do |number, index|
  if index > 0 && number < numbers[index - 1]
    result2 << index
  end
end
puts "Спосіб 2 (ітератор): #{result2.inspect}"