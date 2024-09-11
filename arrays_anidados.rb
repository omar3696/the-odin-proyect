# Crear una matriz 3x3
matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

# Imprimir la matriz
puts "Matriz original:"
matriz.each do |fila|
  puts fila.inspect
end

# Modificar un elemento
matriz[1][1] = 10

# Imprimir la matriz modificada
puts "\nMatriz modificada:"
matriz.each do |fila|
  puts fila.inspect
end

# Transponer la matriz transpose
transpuesta = matriz.transpose
puts "\nMatriz transpuesta:"
transpuesta.each do |fila|
  puts fila.inspect
end

# Aplanar la matriz flatten
plano = matriz.flatten
puts "\nMatriz aplanada:"
puts plano.inspect

#each with index
matriz.each_with_index do |fila, i|
    fila.each_with_index do |elemento, j|
      puts "Elemento en (#{i}, #{j}): #{elemento}"
    end
end
  
