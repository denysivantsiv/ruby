puts "Завдання 3. Перевірка наявності значення в масиві"
numbers = [2, 8, 5, 11, 3]
target = 5

puts
puts "Початковий масив:"
p numbers

result1 = numbers.include?(target)
result2 = numbers.any? { |n| n == target }

puts
puts "Спосіб 1 (include?):"
puts result1 ? "Число #{target} є в масиві" : "Числа #{target} немає в масиві"

puts
puts "Спосіб 2 (any?):"
puts result2 ? "Число #{target} є в масиві" : "Числа #{target} немає в масиві"