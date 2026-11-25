# Configuración del Entorno — Unreal Engine 5 + Android

Esta guía es para arrancar la **Fase Beta 1**.

## Requisitos mínimos recomendados

### Hardware (desarrollo)
- CPU: 8+ núcleos recomendado
- RAM: 32 GB mínimo (64 GB ideal)
- GPU: NVIDIA RTX 3060 o superior (para editor)
- Disco: SSD NVMe con al menos 200 GB libres

### Software
- **Unreal Engine 5.4 o 5.5** (recomendado 5.5)
- Visual Studio 2022 (con workloads de C++ y Game Development)
- Android Studio (última versión estable)
- JDK 17 (recomendado por Epic para UE5 reciente)
- Android SDK 34+ y NDK r25c o la versión que pida tu versión de UE5

## Pasos rápidos

1. Instalar Unreal Engine 5 desde el Epic Games Launcher.
2. En el Launcher → Library → motor → Options → marcar **Android**.
3. Instalar Visual Studio 2022 con:
   - Desktop development with C++
   - Game development with C++
4. Instalar Android Studio y configurar el SDK Manager:
   - Android SDK Platform 34 (o superior)
   - NDK (Side by side) — la versión exacta que indique UE5
   - Android SDK Build-Tools
   - Android SDK Command-line Tools
5. En Unreal Editor → Edit → Project Settings → Platforms → Android:
   - Configurar Minimum SDK / Target SDK
   - Generar keystore de debug si es necesario
   - Activar Support Vulkan (recomendado)
6. Edit → Project Settings → Platforms → Android SDK:
   - Apuntar correctamente a las rutas de SDK, NDK y JDK.

## Recomendaciones específicas para este proyecto

- Usar **Vulkan** como RHI prioritario en Android.
- Empezar con el **Mobile Renderer** o Forward Shading optimizado.
- Activar **World Partition** desde el principio (aunque el mapa de prueba sea pequeño).
- Configurar Auto Exposure en un Post Process Volume global desde el día 1.

## Comandos útiles (después de generar los archivos de proyecto)

```bash
# Generar archivos de Visual Studio
UnrealVersionSelector.exe /projectfiles

# Empaquetar para Android (desde editor o RunUAT)
```

## Notas

- El archivo `OpenWorldColombiaDrive.uproject` ya está en la raíz del repositorio.
- El `.gitignore` está preparado para no subir Binaries, Intermediate, DerivedDataCache, etc.
- Los assets pesados (paisajes finales, vehículos de alta calidad) se añadirán más adelante o vía LFS si es necesario.

Cuando tengas el proyecto abierto en el editor, avisa y pasamos a implementar el ciclo día/noche + Eye Adaptation.
