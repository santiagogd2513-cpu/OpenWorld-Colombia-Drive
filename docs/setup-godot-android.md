# Setup — Godot 4 + Android

Guía para trabajar en la **Fase Beta 1** con el nuevo motor oficial.

## Requisitos

### Mínimos (desarrollo)
- Cualquier PC o laptop decente de los últimos años (incluso con 8-16 GB de RAM se puede trabajar)
- Windows, Linux o macOS
- Godot 4.3 o superior (recomendado 4.3 / 4.4)

### Para exportar a Android desde tu máquina (opcional)
- Android SDK
- JDK 17
- Templates de exportación de Godot para Android

> **Importante:** Aunque no tengas PC potente, **GitHub Actions ya puede generar la APK** por ti. No es obligatorio tener el entorno Android local para avanzar.

## Instalación rápida de Godot

1. Entra a https://godotengine.org/download
2. Descarga **Godot 4.3+ Standard** (o .NET si más adelante quieres C#)
3. Descomprime y ejecuta (no necesita instalación)
4. Abre la carpeta del repositorio como proyecto

## Estructura actual del proyecto

```
/
├── project.godot          ← archivo principal del proyecto
├── scenes/                ← aquí irán las escenas (.tscn)
├── scripts/               ← código GDScript
├── docs/
└── .github/workflows/     ← CI que genera la APK
```

## Controles de prueba (ya definidos en project.godot)

- **W** → Acelerar
- **S** → Frenar / marcha atrás
- **A / D** → Girar

(Se pueden mapear después a controles táctiles para Android)

## Física de vehículos

Godot 4 trae `VehicleBody3D` + `VehicleWheel3D`.  
Se puede configurar para que se sienta arcade (estilo GTA) o un poco más realista.  
Como comentaste que la física tipo GTA te sirve, iremos por ese camino (divertida y predecible).

## Próximos pasos recomendados en Beta 1

1. Crear la escena principal y un entorno de prueba simple
2. Implementar ciclo día/noche (DirectionalLight3D + WorldEnvironment)
3. Ajustar exposición / adaptación ocular (Environment + CameraAttributes)
4. Hacer un tramo de carretera de prueba + un vehículo placeholder
5. Dejar que GitHub Actions genere la primera APK

Cuando quieras, empezamos a armar la primera escena juntos.
