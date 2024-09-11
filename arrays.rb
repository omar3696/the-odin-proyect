#crear array
#numeros = [1, 2, 3, 4, 5]
frutas = ["manzana", "naranja", "pera"]

#acceder a los elementos usando indices
puts frutas[0]  # Imprime "manzana"
puts frutas[1]  # Imprime "naranja"
puts frutas[2]  # Imprime "pera"

#operaciones basicas entre matrices
numeros = [1, 2, 3]
numeros.push(4)      # Agrega 4 al final
numeros << 5         # Otra forma de agregar al final
numeros.unshift(0)   # Agrega 0 al inicio
numeros.pop          # Elimina el último elemento
numeros.shift        # Elimina el primer elemento
numeros.delete_at(1) # Elimina el elemento en el índice 1

#devuelve el numero de elemntos del array
puts numeros.length  # Devuelve la cantidad de elementos

#iteraciones sobre arrays
#each
frutas.each do |fruta|
    puts fruta
  end

#for
for fruta in frutas
    puts fruta
  end

#arrays multidimensionales
matriz = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts matriz[0][1]  # Imprime 2 (fila 1, columna 2)
puts matriz[2][2]  # Imprime 9 (fila 3, columna 3)


#metodo sort
numero = [5, 3, 8, 1]
puts numero.sort  # => [1, 3, 5, 8]


#metodo reverse
puts numero.reverse  # => [1, 8, 3, 5]

#metodo include?
puts numero.include?(3)  # => true

#metodo first, last
puts numero.first  # => 5
puts numero.last   # => 1

#*************SEGUNDA PRUEBA********************
