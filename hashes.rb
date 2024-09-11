#crear hashes
persona = { "nombre" => "Juan", "edad" => 25, "ciudad" => "Madrid" }

#accedar a elementos
puts persona["nombre"]  # Imprime "Juan"
puts persona["edad"]    # Imprime 25

#modificar valores
persona["edad"] = 26
puts persona["edad"]  # Imprime 26

#simbolos con claves 
persona = { nombre: "Juan", edad: 25, ciudad: "Madrid" }

puts persona[:nombre]  # Imprime "Juan"
puts persona[:edad]    # Imprime 25

#metodo key
persona.keys  # => [:nombre, :edad, :ciudad]

#metodo values
persona.values  # => ["Juan", 25, "Madrid"]

#metodo key?
persona.key?(:edad)  # => true

#metodo delete
#persona.delete(:ciudad)

#iterar sobre un hash
persona.each do |clave, valor|
    puts "#{clave}: #{valor}"
  end

#hashes anidados
gente= {
  nombre: "Juan",
  contacto: { telefono: "123456789", email: "juan@example.com" }
}

puts gente[:contacto][:telefono]  # Imprime "123456789"

#conbinar hashes
hash1 = { a: 1, b: 2 }
hash2 = { b: 3, c: 4 }

nuevo_hash = hash1.merge(hash2)
puts nuevo_hash  # => { a: 1, b: 3, c: 4 }

