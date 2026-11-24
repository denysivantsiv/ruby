proc_without_args = Proc.new do
  puts "Proc без аргументів"
end
proc_without_args.call

proc_with_args = Proc.new do |a, b|
  puts "a = #{a}, b = #{b.inspect}"
end
proc_with_args.call(10)
proc_with_args.call(10, 20)
proc_with_args.call(10, 20, 30)

def proc_return_example
  my_proc = Proc.new do
    puts "Всередині Proc"
    return "Повернення з методу"
  end
  my_proc.call
  puts "Цей рядок не виконається"
end

puts proc_return_example