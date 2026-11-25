# Fases del Proyecto OpenWorld-Colombia-Drive

## Fases Beta (Pruebas Técnicas)

| Fase | Nombre | Estado | Documento |
|------|--------|--------|-----------|
| **Beta 1** | Motor Gráfico, Rendimiento y Ciclos Visuales (UE5) | 🟡 En progreso | [beta-1.md](beta-1.md) · [tasks](beta-1/tasks.md) |
| **Beta 2** | Física de Vehículos + Streaming + Tráfico Básico | ⏳ Preparada | [beta-2.md](beta-2.md) · [tasks](beta-2/tasks.md) |

## Fases Principales (Desarrollo Completo)

| Fase | Nombre | Enfoque principal |
|------|--------|-------------------|
| **Fase 1** | Mundo y Ruta Completa | Ruta Bogotá-Medellín completa, topografía real, biomas |
| **Fase 2** | Flota de Vehículos por Década | Vehículos 80s-2010s, daños, personalización |
| **Fase 3** | IA, Tráfico Denso y Mundo Vivo | Tráfico colombiano realista, NPCs, eventos dinámicos |
| **Fase 4** | Clima, Ambiente y Audio | Clima dinámico, sonido, banda sonora por década |
| **Fase 5** | Gameplay, Modos y Progresión | Modos de juego, historia, economía, misiones |
| **Fase 6** | Optimización Final, Multidioma y Lanzamiento | Android final, idiomas, Google Play |

---

**CI/CD:**  
GitHub Actions configurado (`.github/workflows/android-build.yml`).  
- Validación automática del proyecto en cada push.  
- Generación de APK disponible mediante **self-hosted runner** con Unreal Engine 5 + label `ue5-android`.

**Orden recomendado:** Completar Beta 1 → Beta 2 → luego entrar a las Fases Principales.
