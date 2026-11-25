# Fase Beta 2 — Física de Vehículos + Streaming + Tráfico Básico

**Estado:** Preparada (depende de cierre de Beta 1)  
**Motor:** Unreal Engine 5  
**Base:** Mapa de prueba y sistemas visuales de Beta 1

---

## Objetivo Principal

Validar que la física de vehículos (Chaos Vehicle), el streaming del mundo y una IA de tráfico básica funcionan de forma estable y divertida sobre el mapa de prueba de Beta 1, manteniendo el rendimiento en Android.

---

## Alcance Detallado

### 1. Física de Vehículos (Chaos Vehicle System)
- Usar el sistema **Chaos Vehicle** de Unreal Engine 5
- Configurar al menos 2-3 vehículos placeholder de diferentes categorías:
  - Sedán liviano (estilo años 80/90)
  - Camioneta / pickup
  - (Opcional) Bus o vehículo pesado
- Ajustes de:
  - Suspensión, agarre, centro de gravedad, potencia y frenos
  - Diferentes respuestas en asfalto vs superficie húmeda / ripio
- Sistema de daños básico (visual + pérdida de rendimiento)
- Faros, luces de freno y luces traseras funcionales (importante para las pruebas de noche de Beta 1)

### 2. Streaming y Mundo
- Configurar **World Partition** correctamente en el mapa de prueba
- Streaming de landscape, meshes y actores sin hitching notable
- Pruebas de carga/descarga a diferentes velocidades
- Validar que los cambios de zona (urbano → montaña → túnel → páramo) no generan stuttering grave

### 3. Tráfico Básico (IA)
- Sistema simple de tráfico usando AI Controllers + Behavior Trees o State Trees (o el sistema de Mass Entity si se justifica)
- Vehículos y motos que siguen rutas / splines
- Comportamientos diferenciados (motos más agresivas / filtrado)
- Densidad configurable (para poder hacer tests de rendimiento)
- Evitación básica de colisiones con el jugador y entre ellos

### 4. Audio 3D Básico
- Sonido de motor por vehículo (con RPM)
- Frenos, viento y ambiente
- Transiciones de audio al entrar/salir de túneles (reverb / low-pass)

### 5. Integración y Rendimiento
- Mantener los targets de FPS de Beta 1 con tráfico activo
- Medir impacto del tráfico y de la física Chaos en dispositivos Android de referencia
- Perfiles de calidad actualizados

---

## Criterios de Éxito (Definition of Done)

- [ ] Al menos 2 vehículos se sienten distintos y manejables
- [ ] El streaming no genera caídas fuertes de FPS al recorrer el mapa de prueba a velocidad alta
- [ ] El tráfico funciona sin crashes ni comportamientos rotos
- [ ] La combinación (gráficos Beta 1 + física + tráfico) se mantiene estable
- [ ] Existe un video de demostración con tráfico y cambios de zona
- [ ] Build APK generado (idealmente vía GitHub Actions o proceso documentado)
- [ ] Reporte de rendimiento con tráfico activo publicado

---

## Entregables

1. Vehículos configurados con Chaos Vehicle
2. Tráfico básico funcional en el mapa de prueba
3. Streaming estable
4. Build de prueba (APK)
5. Video de demostración
6. Reporte de rendimiento + lista de problemas conocidos
7. Criterios claros de paso a las Fases Principales

---

## Dependencias

- Beta 1 debe estar suficientemente cerrada (mapa de prueba + ciclo día/noche + Eye Adaptation + build base funcionando).

---

**Siguiente paso después de Beta 2:** Entrar a las Fases Principales (empezando por la ruta completa Bogotá-Medellín).
