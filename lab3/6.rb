puts "\n========== Завдання 6 =========="
puts "Пошук курсу та перевірка доступних місць"

seats = {
  "Ruby" => 12,
  "Python" => 8,
  "Git" => 20,
  "SQL" => 5,
  "Linux" => 10,
  "Docker" => 7,
  "HTML/CSS" => 15,
  "Java" => 4,
  "QA" => 9,
  "Go" => 11
}

print "Введіть назву курсу: "
search_name = gets.chomp

if courses.key?(search_name)
  puts "Курс знайдено! Ціна: #{courses[search_name].nil? ? 'не задано' : "#{courses[search_name]} грн"}"
  puts "Доступних місць: #{seats[search_name]}"
else
  puts "Курс не знайдено!"
end