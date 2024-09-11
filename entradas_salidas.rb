#salida puts
puts "Hola, mundo!"
puts 42

#salida print
print "Hola, "
print "mundo!"

#entradas gets
print "Introduce tu nombre: "
nombre = gets
puts "Hola, #{nombre}"

#entrada conversion a entero
print "Introduce un número: "
numero = gets.chomp.to_i
puts "El doble de tu número es: #{numero * 2}"

#entrada conversion a flotante
print "Introduce un número: "
numero = gets.chomp.to_f
puts "El doble de tu número es: #{numero * 2}"