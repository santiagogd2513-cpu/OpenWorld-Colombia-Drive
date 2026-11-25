# Beta 1 — Motor Gráfico, Rendimiento y Ciclos Visuales

## Objetivo
Validar que el motor gráfico puede correr de forma fluida en dispositivos Android de gama media-alta y probar todos los sistemas visuales críticos del juego.

## Alcance

### Motor
- Selección e integración del motor (recomendado: Unreal Engine 5 con optimizaciones móviles o Unity HDRP adaptado)
- Pipeline de renderizado orientado a alto rendimiento en Android
- Sistema de streaming de terreno y assets básico

### Mapa de Prueba
- Tramo representativo de la ruta Bogotá-Medellín (aprox. 5-15 km)
- Incluye:
  - Zona urbana de salida (estilo Bogotá)
  - Carretera de montaña
  - Túnel o zona oscura
  - Sección con niebla / páramo simulado

### Sistemas Visuales a Probar
- Ciclo completo día → atardecer → noche → amanecer
- **Adaptación ocular (Auto-Exposure / Eye Adaptation)**: transición suave al entrar y salir de túneles y zonas oscuras
- Iluminación dinámica (sol, luna, faroles, faros de vehículos)
- Niebla volumétrica
- Sombras dinámicas y estáticas
- Efectos de lluvia / humedad básica (opcional en esta beta)

### Rendimiento
- Target: 30-60 FPS estables en dispositivos de referencia (Snapdragon 7 series / Dimensity equivalentes)
- Medición de:
  - FPS promedio y 1% lows
  - Uso de RAM y VRAM
  - Consumo de batería
  - Temperaturas
- Perfiles de calidad (Bajo / Medio / Alto)

### Controles y Cámara
- Controles táctiles básicos (acelerar, frenar, girar, cámara)
- Cámara de conducción en tercera persona y primera persona
- HUD mínimo de prueba

## Criterios de Éxito
- El mapa de prueba carga y corre estable
- Transiciones de luz (día/noche y adaptación ocular) se sienten naturales
- No hay stuttering grave al cambiar de zona
- Documentación de benchmarks lista

## Entregables
- Build APK/AAB de prueba
- Reporte de rendimiento
- Video de demostración de ciclos día/noche y adaptación ocular
- Lista de problemas conocidos
