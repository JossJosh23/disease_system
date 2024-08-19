# Sistema de Enfermedades para FiveM

Este recurso añade un sistema de enfermedades a tu servidor de FiveM, incluyendo fiebre, dolor de cabeza, mareos, deshidratación e insolación. Cada enfermedad puede ser tratada con diferentes ítems, y el sistema incluye notificaciones y animaciones para una experiencia más inmersiva.

## Características

- Enfermedades Fiebre, dolor de cabeza, mareos, deshidratación e insolación.
- Síntomas Incluye síntomas como fiebre, dolor de cabeza, mareos y deshidratación.
- Tratamientos Diferentes ítems para tratar cada enfermedad.
- Propagación de Enfermedades Enfermedades pueden ser propagadas entre jugadores en ciertas condiciones.
- Notificaciones y Animaciones Notificaciones en pantalla y animaciones relacionadas con las enfermedades.
- Imágenes de Ítems Carpeta de recursos para añadir imágenes a los ítems de tratamiento.

## Instalación

1. Descargar el Recurso

   Clona o descarga el repositorio en la carpeta `resources` de tu servidor de FiveM.

   ```bash
   git clone httpsgithub.comtu_usuariotu_repositorio.git



PARA AÑADIR ENFERMEDAD A UN USUARIO

TriggerServerEvent('zombie:applyDisease', 'fever') -- Cambia 'fever' por la enfermedad deseada

PARA TRATAR UNA ENFERMEDAD
TriggerServerEvent('zombie:applyTreatment', 'medicina_fiebre') -- Cambia 'medicina_fiebre' por el tratamiento deseado
