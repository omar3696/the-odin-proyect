#while
i = 1

while i <= 5
  puts "El valor de i es #{i}"
  i += 1  # Incrementa i en 1
end

#until
i = 1

until i > 5
  puts "El valor de i es #{i}"
  i += 1
end

#for
for i in 1..5
    puts "El valor de i es #{i}"
  end

#times
5.times do |i|
    puts "Iteración número #{i+1}"
  end

#each
numeros = [1, 2, 3, 4, 5]

numeros.each do |numero|
  puts "El número es #{numero}"
end

#each con hashes
personas = { "Juan" => 25, "María" => 30, "Pedro" => 20 }

personas.each do |nombre, edad|
  puts "#{nombre} tiene #{edad} años"
end

#loop
i = 1

loop do
  puts "El valor de i es #{i}"
  i += 1
  break if i > 5
end

#upto
1.upto(5) do |i|
    puts "Número: #{i}"
  end
  
#downto
5.downto(1) do |i|
    puts "Número: #{i}"
  end
  


  
  

