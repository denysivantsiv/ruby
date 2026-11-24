def array_sum(numbers)
  numbers.sum
end

numbers = [10, 20, 30, 40]
puts "Масив: #{numbers.inspect}"
puts "Сума елементів: #{array_sum(numbers)}"

def sum_numbers(*args)
  args.sum
end

puts "Сума через *args: #{sum_numbers(5, 10, 15)}"