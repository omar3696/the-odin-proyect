#texto
print "Introduce tu texto: "
texto=gets

if texto==texto.upcase
    abc="ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
else
    abc="abcdefghijklmnñopqrstuvwxyz"
end

#variable de desplazamiento
print "Valor de desplazamiento: "
d=gets.to_i

texto_cifrado=""

texto.each_char do |c|
    if abc.include?(c)
        texto_cifrado += abc[(abc.index(c) - d) % abc.length]
    else
        texto_cifrado += c
    end
end

print "Texto en cifrado cesar: #{texto_cifrado}"