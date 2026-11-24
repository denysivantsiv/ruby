puts "\n========== Завдання 7 =========="
puts "Обчислення загальної вартості усіх курсів"

total_price = 0
courses.each do |_name, price|
  total_price += price unless price.nil?
end

puts "Загальна вартість усіх курсів: #{total_price} грн"