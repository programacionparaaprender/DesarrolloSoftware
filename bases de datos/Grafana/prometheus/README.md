 # Prometheus en Windows

## Iniciar después de reiniciar Windows

Abre PowerShell y ejecuta:

```powershell
cd "C:\Users\luis1\Downloads\prometheus-3.13.3.windows-amd64"

Start-Process ".\windows_exporter.exe" `
	-ArgumentList "--web.listen-address=127.0.0.1:9182" `
	-WorkingDirectory $PWD

Start-Process ".\prometheus.exe" `
	-ArgumentList "--config.file=prometheus.yml","--storage.tsdb.path=data" `
	-WorkingDirectory $PWD
```

## Verificar el servicio

Comprueba que el exportador publica métricas:

```powershell
Invoke-WebRequest "http://127.0.0.1:9182/metrics"
```

Comprueba el estado de los objetivos en Prometheus:

```powershell
Invoke-RestMethod "http://127.0.0.1:9090/api/v1/query?query=up"
```

La interfaz web está disponible en:

<http://localhost:9090>
