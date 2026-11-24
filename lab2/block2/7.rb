puts "Завдання 7. Добуток максимальних елементів кожного стовпця"
matrix = [
  [3, 8, 2],
  [5, 1, 6],
  [4, 7, 3]
]
puts "Початкова матриця:"
matrix.each { |row| p row }

# Спосіб 1. Цикли while
cols_count = matrix[0].length
max_cols1 = []
j = 0
while j < cols_count
  col_max = matrix[0][j]
  i = 1
  while i < matrix.length
    if matrix[i][j] > col_max
      col_max = matrix[i][j]
    end
    i += 1
  end
  max_cols1 << col_max
  j += 1
end

product1 = 1
k = 0
while k < max_cols1.length
  product1 *= max_cols1[k]
  k += 1
end
puts "Спосіб 1 (while): максимуми = #{max_cols1.inspect}, добуток = #{product1}"

# Спосіб 2. Ітератори
max_cols2 = matrix.transpose.map { |col| col.max }
product2 = max_cols2.reduce(1, :*)
puts "Спосіб 2 (ітератори): максимуми = #{max_cols2.inspect}, добуток = #{product2}"