def compra_venta_acciones(precios)
    mejores_dias = []
    ganacian_max = 0

    precios.each_with_index do |precio_compra, dia_compra|
        (dia_compra + 1...precios.length).each do |dia_venta|
            venta_precio = precios[dia_venta]

            ganancia = venta_precio - precio_compra

            if ganancia > ganacian_max
                ganacian_max = ganancia
                mejores_dias = [dia_compra, dia_venta]
            end
        end
    end
    dia_compra, dia_venta = mejores_dias
    
    puts "Mejor día de compra: #{dia_compra}"
    puts "Mejor día de venta: #{dia_venta}"
end

precios= [17, 3, 6, 9, 15, 8, 6, 1, 10]

compra_venta_acciones(precios)