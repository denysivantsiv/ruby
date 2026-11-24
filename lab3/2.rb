puts "\n========== Завдання 2 =========="
puts "Перетворення хешу в індексний масив"

courses_array = courses.to_a
courses_array.each_with_index do |item, index|
  puts "#{index}: #{item.inspect}"
end