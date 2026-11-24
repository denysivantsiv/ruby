puts "Лабораторна робота №3"
puts "Варіант 19. Система управління курсами навчання"
puts "\n========== Завдання 1 =========="
puts "Створення хешу з 10 курсами"

courses = {
  "Ruby" => 4500,
  "Python" => 5000,
  "Git" => 0,
  "SQL" => 3800,
  "Linux" => 4200,
  "Docker" => nil,
  "HTML/CSS" => 3000,
  "Java" => 6500,
  "QA" => 3500,
  "Go" => 0
}

courses.each do |name, price|
  puts "#{name}: #{price.nil? ? 'не задано' : "#{price} грн"}"
end