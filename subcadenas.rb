def subcadenas(oracion, diccionario)
    resultado = Hash.new(0)
    oracion_minuscula = oracion.downcase

    diccionario.each do |subcadena|
        subcadena_minuscula = subcadena.downcase
        
        cant_veces = oracion_minuscula.scan(subcadena_minuscula).length

        resultado[subcadena] = cant_veces if cant_veces > 0
    end
    resultado
end 

abc = ("a".."z").to_a

palabra = "Holaaaa"

puts subcadenas(palabra, abc)