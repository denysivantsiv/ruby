puts "Завдання 2. Вибір рядків лише з цифр"
items = ["123", "45a", "007", "hello", "2026", "12.5", "89"]

only_digits = items.select { |str| str.match?(/\A\d+\z/) }

puts
puts "Початковий масив:"
p items
puts
puts "Рядки лише з цифр:"
p only_digits