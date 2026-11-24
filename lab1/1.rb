puts "Завдання 1. Обчислення площі трапеції"
print "Введіть основу a: "
a = gets.to_f
print "Введіть основу b: "
b = gets.to_f
print "Введіть висоту h: "
h = gets.to_f

area = ((a + b) / 2.0) * h

puts
puts "Результат:"
puts "Основа a: #{a}, основа b: #{b}, висота h: #{h}"
puts "Площа трапеції: #{area}"