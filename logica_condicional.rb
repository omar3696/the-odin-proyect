#if
numero = 10

if numero > 5
  puts "El número es mayor que 5"
end

#if-else
numero = 3

if numero > 5
  puts "El número es mayor que 5"
else
  puts "El número es 5 o menor"
end

#elsif
numero = 7

if numero > 10
  puts "El número es mayor que 10"
elsif numero > 5
  puts "El número es mayor que 5 pero menor o igual a 10"
else
  puts "El número es 5 o menor"
end

#if en una linea
edad = 18
puts "Eres mayor de edad" if edad >= 18

#unless
llueve = false

unless llueve
  puts "No está lloviendo, sal a caminar"
end

#operador ternario
numero = 8
resultado = numero > 5 ? "Mayor que 5" : "Menor o igual a 5"
puts resultado

#&& and
edad = 25
tiene_licencia = true

if edad >= 18 && tiene_licencia
  puts "Puedes conducir"
else
  puts "No puedes conducir"
end

#|| or
llueve = false
nublado = true

if llueve || nublado
  puts "No olvides tu paraguas"
else
  puts "Puedes salir sin preocupaciones"
end

#! not
tiene_permiso = false

if !tiene_permiso
  puts "Acceso denegado"
else
  puts "Acceso concedido"
end

#case
dia = "lunes"

case dia
when "lunes"
  puts "Es el primer día de la semana"
when "martes"
  puts "Es el segundo día de la semana"
when "miércoles"
  puts "Es el tercer día de la semana"
else
  puts "No es lunes, martes ni miércoles"
end

#when con rangos
calificacion = 85

case calificacion
when 90..100
  puts "Excelente"
when 80..89
  puts "Muy bueno"
when 70..79
  puts "Bueno"
else
  puts "Necesita mejorar"
end

#when con multiples valores en una sola linea
fruta = "manzana"

case fruta
when "manzana", "pera", "durazno"
  puts "Es una fruta común"
when "kiwi", "mango"
  puts "Es una fruta exótica"
else
  puts "No conocemos esa fruta"
end


#case sin argumento
edad = 20

case
when edad < 18
  puts "Eres menor de edad"
when edad >= 18 && edad < 65
  puts "Eres adulto"
else
  puts "Eres mayor"
end











