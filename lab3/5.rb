puts "\n========== Завдання 5 =========="
puts "П'ять найдешевших курсів з ненульовою ціною"

cheapest_courses = courses
  .reject { |_name, price| price.nil? || price == 0 }
  .sort_by { |_name, price| price }
  .first(5)

cheapest_courses.each do |name, price|
  puts "#{name}: #{price} грн"
end