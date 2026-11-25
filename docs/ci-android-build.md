# CI/CD — Builds de APK con Godot 4

## Resumen

El workflow **`.github/workflows/android-build.yml`** ahora usa **Godot 4** y **sí puede generar APKs en los runners gratuitos de GitHub**.

### Lo que hace
- En cada push/PR: valida que exista `project.godot` y la estructura básica.
- En push a `main` o cuando se lanza manualmente (`workflow_dispatch`): descarga Godot + templates, exporta la APK y la sube como **Artifact**.

## Cómo generar una APK

1. Ve a la pestaña **Actions** del repositorio.
2. Selecciona el workflow **Android Build (Godot 4)**.
3. Clic en **Run workflow**.
4. Elige `debug` o `release`.
5. Ejecuta.
6. Cuando termine, descarga el Artifact (la APK).

También se intenta generar automáticamente en cada push a `main`.

## Notas

- Mientras el proyecto solo tenga la escena placeholder, el APK será mínimo (pero válido para probar el pipeline).
- Cuando empecemos a añadir escenas, vehículos e iluminación, el mismo workflow generará builds más completos.
- Ya **no necesitas** un self-hosted runner ni un PC potente para obtener la APK.

## Estado actual

- Validación automática: ✅
- Generación de APK en runners de GitHub: ✅ configurada
- Motor: **Godot 4**
