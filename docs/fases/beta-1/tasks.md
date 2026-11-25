# Tareas — Fase Beta 1 (Godot 4)

## Estado general: 🟡 En progreso avanzado

### Bloque 1 — Fundación del Proyecto
- [x] Proyecto Godot 4 creado (`project.godot`)
- [x] Estructura de carpetas básica
- [x] GitHub Actions configurado para generar APK
- [x] Escena principal creada

### Bloque 2 — Escenario de Prueba
- [x] Carretera de prueba
- [x] Túnel (para probar adaptación ocular)
- [x] Puente
- [x] Agua debajo del puente + ReflectionProbe (reflejos)
- [ ] Mejorar materiales y detalle visual del escenario
- [ ] Añadir bordes de carretera / señales simples

### Bloque 3 — Iluminación y Ciclos Visuales
- [x] WorldEnvironment + Sky procedural
- [x] DirectionalLight3D (sol)
- [x] Auto Exposure activado (CameraAttributesPractical) → adaptación ocular
- [x] Script de ciclo día / atardecer / noche / amanecer
- [ ] Ajustar curvas de color y niebla por hora del día
- [ ] Probar entrada/salida del túnel y refinar velocidad de adaptación

### Bloque 4 — Vehículo de Prueba
- [x] Renault 12 placeholder (VehicleBody3D)
- [x] Física arcade (más estable y predecible que GTA V)
- [x] Faros delanteros
- [x] Script de control (WASD)
- [ ] Añadir mesh más decente o mejorar el placeholder
- [ ] Sonido de motor básico

### Bloque 5 — Cámara y Controles
- [x] Cámara en tercera persona que sigue al vehículo
- [ ] Controles táctiles para Android
- [ ] HUD mínimo (velocidad + hora del día + FPS)

### Bloque 6 — Build y Cierre
- [ ] Generar primera APK real vía GitHub Actions y probarla
- [ ] Grabar video corto del ciclo día/noche + túnel + puente
- [ ] Lista de problemas conocidos
- [ ] Criterios de paso a Beta 2

---

**Controles actuales (teclado):**
- **W** → Acelerar
- **S** → Frenar / Reversa
- **A / D** → Girar
- **Page Up / Page Down** → Avanzar/retroceder el ciclo día-noche (debug)
