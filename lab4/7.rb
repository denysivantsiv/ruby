def execute_block(&block)
  block.call("Ruby")
end

execute_block do |language|
  puts "Вивчаємо #{language}"
end