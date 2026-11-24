def without_arguments
  yield if block_given?
end

def with_arguments
  yield(10, 20) if block_given?
end

without_arguments do
  puts "Блок без аргументів"
end

with_arguments do |a, b|
  puts "Сума: #{a + b}"
end

without_arguments