lambda_without_args = lambda do
  puts "Lambda без аргументів"
end
lambda_without_args.call

lambda_with_args = lambda do |a, b|
  puts "Сума: #{a + b}"
end
lambda_with_args.call(10, 20)

begin
  lambda_with_args.call(10)
rescue ArgumentError => e
  puts "Помилка: #{e.message}"
end

begin
  lambda_with_args.call(10, 20, 30)
rescue ArgumentError => e
  puts "Помилка: #{e.message}"
end

def lambda_return_example
  my_lambda = lambda do
    puts "Всередині Lambda"
    return "Повернення з Lambda"
  end
  result = my_lambda.call
  puts result
  puts "Метод продовжує виконання"
  return "Завершення зовнішнього методу"
end

puts lambda_return_example