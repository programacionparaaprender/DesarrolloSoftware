def analizar_logs(logs):
    # Inicializa los contadores para cada nivel de log
    contadores = {"INFO": 0, "WARNING": 0, "ERROR": 0}

    # Recorre cada entrada de log
    for entrada in logs:
        # Busca cada nivel de log en la entrada actual
        for nivel in contadores:
            # Si encuentra el nivel entre corchetes, incrementa su contador
            if f"[{nivel}]" in entrada:
                contadores[nivel] += 1

    return contadores

data = [
    "[INFO] Usuario conectado",
    "[ERROR] Fallo en BD",
    "[ERROR] Fallo Sintaxis",
    "[WARNING] Uso de deprecated API",
    "[INFO] Otra acción"
]
conteo = analizar_logs(data)
print(f"datos: {conteo}")