#4. **Descomposición de un precio en diccionario**
# Un diccionario almacena:    
# - Precio sin IGV
# - IGV (impuesto como decimal, ejemplo 0.18)
# Crea un nuevo diccionario que contenga:
# - Precio sin IGV
# - Monto del IGV
# - Precio final
# **Fórmulas:**
# - `igv_monto = precio × igv`
# - `precio_final = precio + igv_monto`
producto = {"nombre": "Teclado", "precio": 120.0, "igv": 0.18}
igv_monto = producto.get("precio") * producto.get("igv")
precio_final = producto.get("precio") + igv_monto
print(f"precio final {precio_final}")