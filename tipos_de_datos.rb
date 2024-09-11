#tipos de operaciones
suma=1+1
resta=2-1
multiplicacion=2*2
division= 3/2
exponente=2**2
modulos=8%2
puts "suma=#{suma}"
puts "resta=#{resta}"
puts "multiplicacion=#{multiplicacion}"
puts "division=#{division}"
puts "exponente=#{exponente}"
puts "modulos=#{modulos}"

#numeros enteros y flotantes
division_entera=17/5
division_flotante=17/5.0
puts "division entera=#{division_entera}"
puts "division flotante=#{division_flotante}"

#conversion de tipos de numeros
integer_a_float=13.to_f
float_a_integer=13.9.to_i
puts "integer a floar=#{integer_a_float}"
puts "float a integer=#{float_a_integer}"

#par o impar
puts 3.odd?
puts 5.even?

#concatenacion

puts "Welcome " + "to " + "Odin!"   
puts "Welcome " << "to " << "Odin!"  
puts "Welcome ".concat("to ").concat("Odin!")  


#subdacenas
puts "hello"[0]
puts "hello"[0..1]
puts "hello"[0, 4]
puts "hello"[-1]

#Caracter de escape
#\\  #=> Need a backslash in your string?
#\b  #=> Backspace
#\r  #=> Carriage return, for those of you that love typewriters
#\n  #=> Newline. You'll likely use this one the most.
#\s  #=> Space
#\t  #=> Tab
#\"  #=> Double quotation mark
#\'  #=> Single quotation mark

#interpolacion
name = "Frankyn"

puts "Hello, #{name}" 
puts 'Hello, #{name}' 

#Metodos de cadenas comunes
#Primera letra mayuscula
puts "hello".capitalize 

#incluye?
puts "hello".include?("lo") 

puts "hello".include?("z")   

#todo en mayusculas
puts "hello".upcase 

#en minusculas
puts "Hello".downcase  

#Cadena vacia?
puts "hello".empty?  

puts "".empty?       

#longitud de cadena 
puts "hello".length  

#cadena inversa
puts "hello".reverse  

#division de cadena
puts"hello world".split  

puts "hello".split("")    

#banda
 puts " hello, world   ".strip 

#convertir otros objetos en cadenas
puts 5.to_s        #=> "5"

puts nil.to_s      #=> ""

puts :symbol.to_s  #=> "symbol"





