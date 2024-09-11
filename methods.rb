#declaracion de metodo
def saludar
    puts "¡Hola!"
  end
  
saludar  # Llama al método y muestra "¡Hola!"

#metodo con argumentos
def saludar(nombre)
    puts "¡Hola, #{nombre}!"
  end
  
  saludar("Juan")  # Imprime "¡Hola, Juan!"

#metodo sin return
def multiplicar(a, b)
    a * b  # Última línea devuelve el valor
  end
  
puts multiplicar(3, 4)  # Imprime 12

#metodo con return
def mayor(a, b)
    return a if a > b
    return b if b > a
    "Ambos son iguales"
  end
  
puts mayor(10, 5)  # Imprime 10
puts mayor(5, 10)  # Imprime 10
puts mayor(7, 7)   # Imprime "Ambos son iguales"

#metodos privados y publicos
class Persona
    def saludar
      puts "¡Hola!"
    end
  
    private
  
    def secreto
      puts "Este es un método privado"
    end
  end
  
p = Persona.new
p.saludar     # Funciona
# p.secreto   # Error: método privado

#metodo de instancia
class Persona
    def saludar
      puts "¡Hola!"
    end
  end
  
p = Persona.new
p.saludar  # Llama al método de instancia

#metodo de clase
class Persona
    def self.saludar
      puts "¡Hola desde la clase!"
    end
  end
  
Persona.saludar  # Llama al método de clase
  
  
  
  
  
  