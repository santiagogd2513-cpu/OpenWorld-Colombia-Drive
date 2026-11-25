# OpenWorld-Colombia-Drive

**Juego de conducción de mundo abierto ambientado en la Colombia de los años 80, 90, 2000 y 2010.**  
Ruta principal: **Bogotá → Medellín** (~420 km reales de autopista, páramo, montaña y valle).

**Motor oficial: Godot 4**

---

## 🚀 Estado Actual

| Fase | Estado |
|------|--------|
| **Beta 1** — Motor, rendimiento, ciclo día/noche y adaptación ocular | 🟡 En progreso (ahora en Godot 4) |
| **Beta 2** — Física de vehículos, streaming y tráfico básico | ⏳ Preparada |

### Por qué Godot 4
- Se puede desarrollar y compilar **sin necesidad de un PC de alto rendimiento**
- GitHub Actions **sí puede generar la APK** en los runners gratuitos
- Excelente soporte para Android
- Física de vehículos usable (VehicleBody3D) — se puede hacer arcade estilo GTA o más realista
- Se ve bien cuando se trabaja bien la iluminación y post-procesado

### Documentación clave
- [Beta 1](docs/fases/beta-1.md)
- [Beta 2](docs/fases/beta-2.md)
- [Setup Godot + Android](docs/setup-godot-android.md)
- [CI / Builds APK](docs/ci-android-build.md)

### CI / GitHub Actions
Workflow configurado para **Godot 4**:
- Validación automática en cada push
- Generación de APK real en runners de GitHub (ya no necesita self-hosted ni PC potente)

Archivo: [`.github/workflows/android-build.yml`](.github/workflows/android-build.yml)

---

## 🎯 Visión
Recrear la experiencia de manejar por Colombia en las décadas 80s-2010s: vehículos de época, tráfico caótico, páramo, atardeceres andinos y adaptación ocular al entrar/salir de túneles.

Física de vehículos: estilo arcade (tipo GTA) está perfectamente bien.

---

## 📅 Fases

**Betas**
1. Motor gráfico + ciclos visuales + rendimiento (actual)
2. Física de vehículos + streaming + tráfico básico

**Principales**
1. Mundo y ruta completa Bogotá-Medellín  
2. Flota de vehículos por década  
3. IA y mundo vivo  
4. Clima, ambiente y audio  
5. Gameplay y progresión  
6. Optimización final + multidioma + lanzamiento  

---

**Hecho con ❤️ para recrear las carreteras colombianas de verdad.**  
*(El gato ya no puede sabotear el build)*
