#2. **Monto total de una compra usando lista de precios**
#Tienes una lista de 3 precios en soles. Debes sumar el total e incrementar un 12% de IGV.
#**Fórmulas:**
#- Suma total: `total = p1 + p2 + p3`
#- Aplicar comisión: `total_final = Total × 1.12`
p1 = 12.5
p2 = 8.0
p3 = 30.0
precios = [12.5, 8.0, 30.0]
total = p1 + p2 + p3
total_final = total * 1.12
print(total_final)
total_final = total + total * 0.12
print(total_final)