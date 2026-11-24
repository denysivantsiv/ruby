puts "Завдання 4. Обробка масиву статей"
articles = [
  { title: "Основи Ruby", views: 1500, category: "Ruby" },
  { title: "CSS Grid", views: 2300, category: "Frontend" },
  { title: "Масиви та блоки", views: 800, category: "Ruby" },
  { title: "Ітератори в Ruby", views: 3200, category: "Ruby" },
  { title: "SQL для початківців", views: 1900, category: "DB" }
]

puts
puts "Усі статті:"
articles.each do |art|
  puts "#{art[:title]} | Категорія: #{art[:category]} | Перегляди: #{art[:views]}"
end

# Спосіб 1: select + sort_by
filtered_sorted = articles
  .select { |art| art[:category] == "Ruby" && art[:views] > 1000 }
  .sort_by { |art| art[:views] }

puts
puts "Спосіб 1 (select + sort_by):"
filtered_sorted.each do |art|
  puts "- #{art[:title]} (#{art[:views]} переглядів)"
end

# Спосіб 2: each_with_object + sort
selected = articles.each_with_object([]) do |art, arr|
  if art[:category] == "Ruby" && art[:views] > 1000
    arr << art
  end
end
sorted_manual = selected.sort { |a, b| a[:views] <=> b[:views] }

puts
puts "Спосіб 2 (each_with_object + sort):"
sorted_manual.each do |art|
  puts "- #{art[:title]} (#{art[:views]} переглядів)"
end