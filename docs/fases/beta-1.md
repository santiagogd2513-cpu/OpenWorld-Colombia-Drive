# Fase Beta 1 — Motor Gráfico, Rendimiento y Ciclos Visuales

**Estado:** En progreso  
**Motor oficial:** Unreal Engine 5  
**Plataforma objetivo:** Android (gama media-alta)

---

## Objetivo Principal

Validar que Unreal Engine 5 puede entregar una experiencia visual de alta calidad y rendimiento estable en Android, usando un tramo de prueba de la ruta Bogotá-Medellín.  
Prioridad absoluta: **ciclos de iluminación realistas + adaptación ocular (Eye Adaptation / Auto Exposure)**.

---

## Alcance Detallado

### 1. Motor y Configuración Base (UE5)
- Proyecto Unreal Engine 5 creado y configurado para Android
- Target de renderizado: Forward o Deferred optimizado para móvil (Mobile Renderer / Android Vulkan prioritario)
- Plugins necesarios activados (Enhanced Input, Water si aplica, etc.)
- Sistema de World Partition / Level Streaming preparado para el mapa de prueba
- Configuración de Scalability (Low / Medium / High) específica para Android

### 2. Mapa de Prueba (Prototype Stretch)
Tramo representativo de **5 a 15 km** de la ruta Bogotá → Medellín que incluya:
- Zona urbana de salida (estilo avenidas de Bogotá / Autopista Norte)
- Carretera de montaña con curvas
- Al menos un **túnel o zona muy oscura**
- Sección con niebla / ambiente de páramo
- Cambios de elevación visibles

El mapa debe permitir probar streaming, LOD, y cambios bruscos de iluminación.

### 3. Sistemas Visuales Críticos
- **Ciclo completo Día → Atardecer → Noche → Amanecer** (controlado por tiempo o tecla de debug)
- **Adaptación Ocular (Eye Adaptation / Auto Exposure)**  
  Transiciones suaves y creíbles al entrar y salir de túneles, zonas oscuras y cambios de luz solar.
- Iluminación dinámica (Directional Light + Sky Atmosphere + Sky Light)
- Niebla volumétrica (Exponential Height Fog + Volumetric Fog)
- Sombras (cascaded shadow maps optimizadas para móvil)
- Post-process volume con Auto Exposure correctamente configurado
- Faros de vehículos y luces artificiales básicas para la noche

### 4. Rendimiento (Android)
**Targets:**
- 30 FPS mínimos estables / 60 FPS deseables en dispositivos de referencia
- Dispositivos de referencia: Snapdragon 7 Gen 1 / 7+ Gen 2 / Dimensity 7200 o superiores

Métricas a medir y documentar:
- FPS promedio + 1% lows
- Uso de RAM / VRAM
- Temperatura y throttling
- Consumo de batería aproximado
- Tiempo de carga del mapa de prueba

### 5. Controles y Cámara de Prueba
- Controles táctiles básicos (acelerar, frenar, girar)
- Cámara de conducción en tercera persona (y opcional primera persona)
- HUD mínimo: velocidad, reloj de ciclo día/noche, indicador de FPS

---

## Criterios de Éxito (Definition of Done)

- [ ] Proyecto UE5 abre y empaqueta correctamente para Android
- [ ] Mapa de prueba se puede recorrer de punta a punta sin crashes
- [ ] Ciclo día/noche funciona y se ve bien
- [ ] Adaptación ocular se siente natural al entrar/salir de zonas oscuras
- [ ] Rendimiento cumple los targets en al menos un dispositivo de referencia
- [ ] Existe un video de demostración (día → noche + túnel)
- [ ] Documento de benchmarks publicado en `/docs/fases/beta-1/`

---

## Entregables de la Fase Beta 1

1. Proyecto Unreal Engine 5 base configurado para Android
2. Mapa de prueba jugable
3. Sistema de ciclo día/noche + Eye Adaptation funcional
4. Build APK/AAB de prueba
5. Reporte de rendimiento
6. Video de demostración
7. Lista de problemas conocidos y siguientes pasos hacia Beta 2

---

## Próximos pasos inmediatos (orden recomendado)

1. Crear el proyecto UE5 y subirlo (o estructurarlo) en este repositorio
2. Configurar Android SDK / NDK / Vulkan
3. Implementar el ciclo de iluminación + Auto Exposure
4. Construir el tramo de mapa de prueba
5. Añadir un vehículo placeholder simple para recorrer el mapa
6. Primeras mediciones de rendimiento

---

**Motor confirmado: Unreal Engine 5**  
**Empezamos ahora.**
