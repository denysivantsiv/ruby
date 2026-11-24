puts "\n========== Завдання 4 =========="
puts "Три курси з найкоротшими назвами"

shortest_names = courses.sort_by { |name, _price| name.length }.first(3)
shortest_names.each do |name, _price|
  puts "#{name} (#{name.length} символів)"
end