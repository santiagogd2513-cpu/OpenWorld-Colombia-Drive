# OpenWorld-Colombia-Drive

**Juego de conducción de mundo abierto ambientado en la Colombia de los años 80, 90, 2000 y 2010.**  
Ruta principal: **Bogotá → Medellín** (~420 km reales de autopista, páramo, montaña y valle).

Motor gráfico de alto rendimiento enfocado en Android, con ciclos día/noche, adaptación ocular (auto-exposición), iluminación dinámica, niebla de páramo, física realista de vehículos de época y streaming denso estilo colombiano.

---

## 🎯 Visión del Proyecto

Recrear la experiencia de manejar por Colombia en distintas décadas:
- Vehículos icónicos (Renault 12, Mazda 323, Toyota Hilux, camionetas blindadas, etc.)
- Carreteras reales con cambios de clima y altitud (Bogotá 2600 m → Páramo de Sonsón → Medellín 1500 m)
- Tráfico caótico, motos, buses, niebla, atardeceres andinos y noches oscuras
- Música y ambiente de cada época (vallenato, rock en español, reggaetón temprano, etc.)

---

## 📅 Estructura de Desarrollo

### Fases Beta (Pruebas Técnicas)

#### Beta 1 — Motor Gráfico, Rendimiento y Ciclos Visuales
**Objetivo:** Validar que el motor puede correr fluido en dispositivos Android de gama media-alta y probar todos los sistemas visuales críticos.

Incluye:
- Implementación del motor (Unreal Engine 5 / Unity High Definition o equivalente optimizado para móvil)
- Pequeña sección de mapa de prueba (tramo representativo de la ruta Bogotá-Medellín)
- Ciclo día / noche / atardecer completo
- Adaptación ocular (auto-exposición al entrar/salir de túneles y zonas oscuras)
- Iluminación dinámica, sombras, niebla volumétrica y lugares oscuros
- Benchmarks de rendimiento (FPS, memoria, batería)
- Controles táctiles básicos + cámara de conducción

#### Beta 2 — Física de Vehículos + Streaming + Tráfico Básico
**Objetivo:** Validar física, carga de mundo y IA mínima en el mapa de prueba.

Incluye:
- Física realista de vehículos de diferentes décadas
- Sistema de streaming de assets y terreno
- Tráfico AI básico (carros y motos)
- Colisiones, daños básicos y respuesta del vehículo
- Pruebas de estabilidad en cambios de altitud y clima
- Integración de audio 3D básico

---

### Fases Principales (Desarrollo Completo)

#### Fase 1 — Mundo y Ruta Completa
Modelado y streaming de toda la ruta Bogotá-Medellín con topografía real, puntos de interés, peajes, túneles y cambios de bioma (sabana → páramo → bosque andino → valle de Aburrá).

#### Fase 2 — Flota de Vehículos por Década
Catálogo completo de vehículos 1980-2010 (sedanes, camionetas, buses, motos). Sistema de daños, personalización estética y mecánica, y comportamiento diferenciado por época.

#### Fase 3 — IA, Tráfico Denso y Mundo Vivo
Tráfico realista estilo colombiano, peatones, eventos dinámicos (retenciones, accidentes, controles de policía, vendedores ambulantes), y sistema de NPCs.

#### Fase 4 — Clima, Ambiente y Audio
Clima dinámico (niebla de páramo, lluvia tropical, sol andino), ciclo completo día/noche con adaptación ocular refinada, sonido ambiental y banda sonora por década.

#### Fase 5 — Gameplay, Modos y Progresión
Modo libre, carreras, historia ambientada en las décadas, sistema de economía, misiones secundarias y progresión del jugador.

#### Fase 6 — Optimización Final, Multidioma y Lanzamiento
Optimización agresiva para Android, UI completa, soporte multiidioma (Español prioritario + Inglés + otros), controles, logros, y preparación para publicación en Google Play.

---

## 🌍 Soporte de Idiomas (Multidioma)

El juego y la documentación se desarrollan con soporte multiidioma desde el inicio:
- **Español** (principal)
- **Inglés**
- Estructura preparada para más idiomas (portugués, etc.)

Los textos, menús, subtítulos y documentación del proyecto estarán localizados.

---

## 📁 Estructura del Repositorio (inicial)

```
/
├── README.md
├── docs/
│   ├── vision.md
│   ├── fases/
│   │   ├── beta-1.md
│   │   ├── beta-2.md
│   │   ├── fase-1.md
│   │   ├── fase-2.md
│   │   ├── fase-3.md
│   │   ├── fase-4.md
│   │   ├── fase-5.md
│   │   └── fase-6.md
│   └── referencia-historica/
├── assets/          (placeholder)
├── prototypes/      (mapas de prueba, vehículos test)
└── source/          (código del motor / proyecto)
```

---

## 🚀 Estado Actual

- Repositorio creado
- Estructura de fases definida
- Listo para iniciar **Beta 1**

---

**Hecho con ❤️ para recrear las carreteras colombianas de verdad.**
