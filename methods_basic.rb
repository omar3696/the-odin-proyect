#each
[1, 2, 3].each do |num|
    puts num
end

#each con hash
{a: 1, b: 2, c: 3}.each do |clave, valor|
    puts "#{clave}: #{valor}"
end

#map 
result = [1, 2, 3].map do |num|
    num * 2
end
puts result  # => [2, 4, 6]

#select
pares = [1, 2, 3, 4, 5, 6].select do |num|
    num.even?
end
puts pares  # => [2, 4, 6]

#reject
impares = [1, 2, 3, 4, 5, 6].reject do |num|
    num.even?
end
puts impares  # => [1, 3, 5]

#find
primero_par = [1, 2, 3, 4, 5, 6].find do |num|
    num.even?
end
puts primero_par  # => 2

#any?
todos_mayores = [5, 7, 9].all? do |num|
    num > 4
end
puts todos_mayores  # => true

#none?
ningun_par = [1, 3, 5].none? do |num|
    num.even?
end
puts ningun_par  # => true

#count
pares = [1, 2, 3, 4, 5, 6].count do |num|
    num.even?
end
puts pares  # => 3

#max y min
mayor = [3, 1, 4, 1, 5, 9].max
puts mayor  # => 9

menor = [3, 1, 4, 1, 5, 9].min
puts menor  # => 1

#reduce
suma = [1, 2, 3, 4].reduce(0) do |acumulador, num|
    acumulador + num
end
puts suma  # => 10

#each_with_index
["a", "b", "c"].each_with_index do |letra, indice|
    puts "#{indice}: #{letra}"
end
  
  

  
  
  
  
  
  
  