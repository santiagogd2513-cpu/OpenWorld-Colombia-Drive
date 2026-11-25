# Fase Beta 1 — Motor Gráfico, Rendimiento y Ciclos Visuales

**Estado:** En progreso  
**Motor oficial:** Godot 4  
**Plataforma objetivo:** Android (gama media-alta)

---

## Objetivo Principal

Validar que **Godot 4** puede entregar una experiencia visual agradable y rendimiento estable en Android, usando un tramo de prueba de la ruta Bogotá-Medellín.  
Prioridad absoluta: **ciclos de iluminación + adaptación ocular (exposición automática)**.

---

## Alcance Detallado

### 1. Motor y Configuración Base (Godot 4)
- Proyecto Godot 4 configurado (`project.godot` ya existe)
- Renderer: Forward+ (o Compatibility si hace falta en dispositivos muy bajos)
- Física: Jolt Physics (ya configurado)
- Estructura de carpetas: `scenes/`, `scripts/`, etc.
- Export a Android funcionando vía GitHub Actions

### 2. Mapa de Prueba (Prototype Stretch)
Tramo representativo de **5 a 15 km** de la ruta Bogotá → Medellín que incluya:
- Zona urbana de salida (estilo avenidas de Bogotá / Autopista Norte)
- Carretera de montaña con curvas
- Al menos un **túnel o zona muy oscura**
- Sección con niebla / ambiente de páramo
- Cambios de elevación visibles

### 3. Sistemas Visuales Críticos
- **Ciclo completo Día → Atardecer → Noche → Amanecer**
- **Adaptación ocular** (CameraAttributesPractical o similar + Environment)
- DirectionalLight3D + WorldEnvironment + Sky
- Niebla (Environment fog)
- Sombras razonables para móvil
- Faros de vehículos y luces artificiales básicas para la noche

### 4. Rendimiento (Android)
**Targets:**
- 30 FPS mínimos estables / 60 FPS deseables en dispositivos de referencia
- Dispositivos de referencia: Snapdragon 7 series / Dimensity equivalentes o superiores

### 5. Controles y Cámara de Prueba
- Controles táctiles básicos (acelerar, frenar, girar)
- Cámara de conducción en tercera persona
- HUD mínimo: velocidad, reloj del ciclo, FPS

---

## Criterios de Éxito

- [ ] Proyecto Godot abre y se exporta a Android (vía Actions o local)
- [ ] Mapa de prueba se puede recorrer
- [ ] Ciclo día/noche funciona y se ve bien
- [ ] Adaptación ocular se nota al entrar/salir de zonas oscuras
- [ ] Rendimiento aceptable en al menos un dispositivo real
- [ ] Existe un video de demostración
- [ ] Primera APK generada y descargable desde GitHub Actions

---

## Entregables

1. Proyecto Godot 4 base
2. Mapa de prueba jugable
3. Ciclo día/noche + adaptación ocular
4. Build APK de prueba (generado por GitHub Actions)
5. Reporte de rendimiento
6. Video de demostración
7. Lista de problemas conocidos → entrada a Beta 2

---

## Próximos pasos inmediatos

1. Crear escena principal + entorno de prueba simple
2. Implementar ciclo de iluminación y adaptación ocular
3. Añadir carretera de prueba + vehículo placeholder (VehicleBody3D)
4. Dejar que GitHub Actions genere la primera APK
5. Probar en dispositivo real cuando sea posible

---

**Motor oficial actual: Godot 4**  
**GitHub Actions ya puede compilar la APK.**
