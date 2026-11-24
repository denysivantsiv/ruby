puts "\n========== Завдання 8 =========="
puts "Перевірка курсів без ціни або з нульовою ціною"

missing_price_courses = courses.select { |_name, price| price.nil? || price == 0 }

if missing_price_courses.empty?
  puts "Усі курси мають задану ненульову ціну."
else
  puts "Знайдено курси без ціни або з нульовою ціною:"
  missing_price_courses.each do |name, price|
    puts "#{name}: #{price.nil? ? 'не задано' : '0 грн'}"
  end

  puts "\nВведення нової ціни:"
  missing_price_courses.each do |name, _price|
    loop do
      print "Введіть ціну для '#{name}' (грн): "
      input = gets.chomp
      if input.match?(/\A[1-9]\d*\z/)
        courses[name] = input.to_i
        break
      else
        puts "Помилка! Введіть додатне ціле число."
      end
    end
  end
end

puts "\nОновлений хеш курсів:"
courses.each do |name, price|
  puts "#{name}: #{price} грн"
end