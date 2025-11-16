#2. **Filtrar ingresos altos**
    
#    Con la lista de ingresos mensuales `[1500, 3400, 5200, 1800, 2500]`, usa `filter` con `lambda` para obtener solo 
# los ingresos mayores o iguales a 3000. Ideal para identificar usuarios de alto perfil económico.
ingresos = [1500, 3400, 5200, 1800, 2500]
ingresos_mayores = list(filter(lambda ingreso:ingreso >= 3000, ingresos))
print(f"ingresos mayores: {ingresos_mayores}")