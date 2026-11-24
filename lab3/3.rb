puts "\n========== Завдання 3 =========="
puts "Сортування курсів"
puts "1 - За назвою курсу"
puts "2 - За ціною"
print "Оберіть спосіб сортування: "
choice = gets.to_i

case choice
when 1
  sorted_courses = courses.sort_by { |name, _price| name }
when 2
  sorted_courses = courses.sort_by { |_name, price| price.nil? ? Float::INFINITY : price }
else
  puts "Неправильний вибір!"
  sorted_courses = []
end

sorted_courses.each do |name, price|
  puts "#{name}: #{price.nil? ? 'не задано' : "#{price} грн"}"
end