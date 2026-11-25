# Tareas — Fase Beta 1 (Unreal Engine 5)

## Estado general: 🟡 En progreso

### Bloque 1 — Fundación del Proyecto
- [ ] Crear proyecto Unreal Engine 5 (Blank o Third Person como base)
- [ ] Configurar Target Platform: Android
- [ ] Activar Vulkan como RHI prioritario
- [ ] Configurar Scalability Groups para móvil
- [ ] Añadir el proyecto al repositorio (estructura + .gitignore correcto para UE5)
- [ ] Crear documento de setup del entorno de desarrollo (Android SDK, NDK, JDK, etc.)

### Bloque 2 — Iluminación y Ciclos Visuales (Prioridad Alta)
- [ ] Configurar Sky Atmosphere + Directional Light + Sky Light
- [ ] Implementar ciclo Día / Atardecer / Noche / Amanecer (Blueprint o C++)
- [ ] Configurar Post Process Volume con **Auto Exposure / Eye Adaptation**
- [ ] Ajustar velocidad y curva de adaptación ocular (entrada/salida de túneles)
- [ ] Añadir Exponential Height Fog + Volumetric Fog
- [ ] Crear al menos un túnel / zona oscura de prueba
- [ ] Probar y refinar transiciones de luz (día ↔ noche y claro ↔ oscuro)

### Bloque 3 — Mapa de Prueba
- [ ] Definir y bloquear el tramo exacto de 5-15 km (referencia real Bogotá-Medellín)
- [ ] Crear landscape / terreno base con cambios de elevación
- [ ] Añadir carretera principal (spline o mesh)
- [ ] Colocar zona urbana de salida (bloques placeholder estilo Bogotá)
- [ ] Crear sección de montaña / curvas
- [ ] Crear sección de páramo / niebla
- [ ] Configurar World Partition o Level Streaming básico
- [ ] Añadir LODs y HLOD simples

### Bloque 4 — Vehículo y Controles de Prueba
- [ ] Importar o crear vehículo placeholder simple (puede ser el Chaos Vehicle de ejemplo)
- [ ] Configurar cámara de tercera persona de conducción
- [ ] Implementar controles táctiles básicos (acelerar / frenar / girar)
- [ ] Añadir HUD mínimo (velocidad + reloj del ciclo + FPS)

### Bloque 5 — Rendimiento y Empaquetado
- [ ] Configurar perfiles de calidad (Low / Medium / High)
- [ ] Realizar primeras capturas de rendimiento en dispositivo real o emulador potente
- [ ] Documentar FPS, 1% lows, uso de memoria y temperatura
- [ ] Generar primer build APK/AAB de prueba
- [ ] Crear video de demostración (ciclo completo + entrada a túnel)

### Bloque 6 — Documentación y Cierre
- [ ] Escribir reporte de rendimiento
- [ ] Listar problemas conocidos
- [ ] Actualizar este archivo de tareas y el README de Beta 1
- [ ] Definir criterios claros de paso a Beta 2

---

**Notas:**
- Priorizar siempre la sensación visual de la adaptación ocular y el ciclo día/noche.
- Todo lo que no sea crítico para probar iluminación y rendimiento se deja para Beta 2 o fases posteriores.
