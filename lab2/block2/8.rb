puts "Завдання 8. Мінімум у двовимірному масиві"
matrix = [
  [12, 5, 8],
  [7, -4, 15],
  [9, 3, 1]
]
puts "Початкова матриця:"
matrix.each { |row| p row }

# Спосіб 1. Цикли while
min1 = matrix[0][0]
i = 0
while i < matrix.length
  j = 0
  while j < matrix[i].length
    if matrix[i][j] < min1
      min1 = matrix[i][j]
    end
    j += 1
  end
  i += 1
end
puts "Спосіб 1 (while): #{min1}"

# Спосіб 2. Ітератор each
min2 = matrix[0][0]
matrix.each do |row|
  row.each do |element|
    min2 = element if element < min2
  end
end
puts "Спосіб 2 (ітератор): #{min2}"