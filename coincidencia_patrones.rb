#ciclo normal
grade = 'C'

case grade
    when 'A' then puts 'Amazing effort'
    when 'B' then puts 'Good work'
    when 'C' then puts 'Well done'
    when 'D' then puts 'Room for improvement'
    else puts 'See me'
end

#sintaxis de coincidencia de patrones
case grade
    in 'A' then puts 'Amazing effort'
    in 'B' then puts 'Good work'
    in 'C' then puts 'Well done'
    in 'D' then puts 'Room for improvement'
    else puts 'See me'
end

#valores de retorno
result = case grade
    in 'A' then 1
    in 'B' then 2
    in 'C' then 3
    else 0
end

puts result

#coincidencia de patrones de objetos
input = "hola"

case input
    in String then puts 'input was of type String'
    in Integer then puts 'input was of type Integer'
end

#patron variable
a = 5

case 1
in a
  a
end

puts a


case 1
in ^a
  :no_match
end

puts a

#como coincidencia de patrones
case 3
    in 3 => a
    puts a
end

#coincidencia de patrones alternativos
case 0
    in 0 | 1 | 2
    puts :match
end

#coincidencias de guardia
some_other_value = true

case 0
in 0 if some_other_value
  puts :match
end

#coincidencia de patrones de hash
case { a: 'apple', b: 'banana' }
in { a: 'aardvark', b: 'bat' }
  puts :no_match
in { a: 'apple', b: 'banana' }
  puts :match
end

case { a: 'apple', b: 'banana' }
in { a: a, b: b }
  puts a
  puts b
end

case { a: 'apple', b: 'banana' }
in { a:, b: }
  puts a
  puts b
end

case { a: 'apple', b: 'banana' }
in a:, b:
  puts a
  puts b
end

case { a: 'ant', b: 'ball', c: 'cat' }
in { a: 'ant', **rest }
  p rest
end

case { a: 'ant', b: 'ball' }
in { a: 'ant' }
  'this will match'
in { a: 'ant', b: 'ball' }
  'this will never be reached'
end

case { a: 'ant', b: 'ball' }
in { a: 'ant', **nil }
  puts :no_match
in { a: 'ant', b: 'ball' }
  puts :match
end

case { a: 'ant', b: 'ball' }
in { a: 'ant' } => hash
  p hash
end

#asignacion hacia la derecha
login = { username: 'hornby', password: 'iliketrains' }

case login
in { username: username }
  # La variable username ahora contiene el valor del username del hash
  puts "Logged in with username #{username}"
end
