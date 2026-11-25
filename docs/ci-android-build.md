# CI/CD — Builds de APK con GitHub Actions

## Resumen

El repositorio tiene configurado el workflow:

**`.github/workflows/android-build.yml`**

### Lo que hace automáticamente
- En cada push/PR a `main` o `develop`: valida que el proyecto tenga la estructura correcta (`.uproject`, docs, etc.).

### Lo que genera la APK real
- Solo cuando se lanza el workflow **manualmente** (`workflow_dispatch`) y se marca `generate_apk = true`.
- Requiere un **self-hosted runner** etiquetado con `self-hosted` y `ue5-android`.

---

## Por qué self-hosted

Unreal Engine 5 pesa decenas de GB. Los runners gratuitos de GitHub no tienen espacio ni tiempo suficiente para descargar el motor + SDK + compilar un proyecto. Por eso el build real está pensado para una máquina tuya (o un servidor) que ya tenga UE5 instalado.

---

## Cómo configurar el self-hosted runner

1. En tu máquina (Windows o Linux) instala:
   - Unreal Engine 5.4 o 5.5
   - Android SDK + NDK (las versiones que pida tu UE5)
   - JDK 17

2. Ve a tu repositorio en GitHub → **Settings → Actions → Runners → New self-hosted runner**.

3. Sigue las instrucciones para descargar y configurar el runner.

4. Al registrarlo, añade los labels:
   - `self-hosted`
   - `ue5-android`

5. (Opcional pero recomendado) Crea un secret en el repositorio llamado:
   - `UE5_ENGINE_PATH` → ruta absoluta a la carpeta del motor  
     Ejemplo Windows: `C:\Program Files\Epic Games\UE_5.5`  
     Ejemplo Linux: `/opt/UnrealEngine` o `/home/usuario/UnrealEngine`

6. Inicia el runner (`run.cmd` o `./run.sh`).

---

## Cómo generar una APK

1. Ve a la pestaña **Actions** del repositorio.
2. Selecciona el workflow **Android Build (Unreal Engine 5)**.
3. Clic en **Run workflow**.
4. Elige la configuración (`Development` o `Shipping`).
5. Marca **generate_apk = true**.
6. Ejecuta.

Si el runner self-hosted está online y bien configurado, el job `build-android` se ejecutará, empaquetará el proyecto y subirá la APK (o AAB) como **Artifact** (disponible 14 días).

---

## Estado actual

- Validación automática: ✅ funcionando
- Generación de APK: lista, esperando que configures un self-hosted runner con UE5

Cuando tengas el runner listo y generes la primera APK, avísame y revisamos el resultado juntos.
