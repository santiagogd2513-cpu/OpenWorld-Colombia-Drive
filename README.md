# OpenWorld-Colombia-Drive

**Juego de conducción de mundo abierto ambientado en la Colombia de los años 80, 90, 2000 y 2010.**  
Ruta principal: **Bogotá → Medellín** (~420 km reales de autopista, páramo, montaña y valle).

**Motor oficial: Unreal Engine 5**

---

## 🚀 Estado Actual

| Fase | Estado |
|------|--------|
| **Beta 1** — Motor, rendimiento, ciclo día/noche y Eye Adaptation | 🟡 En progreso |
| **Beta 2** — Física (Chaos Vehicle), streaming y tráfico básico | ⏳ Preparada |

### Documentación clave
- [Beta 1](docs/fases/beta-1.md) · [Tareas Beta 1](docs/fases/beta-1/tasks.md)
- [Beta 2](docs/fases/beta-2.md) · [Tareas Beta 2](docs/fases/beta-2/tasks.md)
- [Setup UE5 + Android](docs/setup-ue5-android.md)

### CI / GitHub Actions
Ya está configurado el workflow **Android Build**:
- Validación automática de la estructura del proyecto en cada push
- Pipeline listo para generar **APK** usando un **self-hosted runner** con Unreal Engine 5 (label `ue5-android`)

Archivo: [`.github/workflows/android-build.yml`](.github/workflows/android-build.yml)

> **Nota importante:** Los runners gratuitos de GitHub no tienen suficiente espacio ni el motor instalado para compilar Unreal Engine 5. Para obtener una APK real necesitas un self-hosted runner con UE5 + Android SDK/NDK.

---

## 🎯 Visión
Recrear la experiencia de manejar por Colombia en las décadas 80s-2010s: vehículos de época, tráfico caótico, páramo, atardeceres andinos y adaptación ocular realista al entrar/salir de túneles.

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
