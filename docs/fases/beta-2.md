# Beta 2 — Física de Vehículos + Streaming + Tráfico Básico

## Objetivo
Validar la física de vehículos, el sistema de streaming del mundo y una IA de tráfico mínima sobre el mapa de prueba de Beta 1.

## Alcance

### Física de Vehículos
- Implementación de física realista (ruedas, suspensión, centro de gravedad, agarre)
- Diferenciación básica entre tipos de vehículos (sedán liviano vs camioneta vs bus)
- Respuesta a diferentes superficies (asfalto, ripio, húmedo)
- Sistema de daños visuales y mecánicos básicos
- Faros y luces de freno funcionales

### Streaming y Mundo
- Streaming de terreno y assets sin stuttering
- Carga/descarga de zonas según distancia del jugador
- Pruebas de estabilidad al viajar a velocidad alta

### Tráfico Básico
- IA simple de vehículos que siguen rutas
- Motos y carros con comportamientos diferenciados
- Evitación de colisiones básica
- Densidad configurable para pruebas de rendimiento

### Audio
- Motor, frenos, viento y ambiente 3D básico
- Transiciones de audio al entrar/salir de túneles

## Criterios de Éxito
- El vehículo se siente creíble y divertido de manejar
- El streaming no genera caídas de FPS notables
- El tráfico no se traba ni causa crashes
- La combinación física + gráficos + tráfico se mantiene estable

## Entregables
- Build de prueba con varios vehículos
- Video de conducción con tráfico y cambios de zona
- Reporte de rendimiento con tráfico activo
- Lista de ajustes necesarios para las fases principales
