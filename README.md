# QR-SCANNER
# Equipo de Proyecto 

1- Bastian Pezo --- Diseñador

2- Cristofer Mondaca --- Desarrollador 

3- Armin Herrera --- Arquitecto

# Caso de uso
**Caso de Uso : Scaneo de Codigos QR**
*Descripcion:* Aplicacion de dispositivo movil con la funcionalidad de Escanear codigos QR a travez de la camara trasera y delantera

*Flujo del Caso de Uso :*

1. **Ingreso a la aplicacion movil**
    - El ususario puede ingresar a la aplicaicon sin necesidad de credenciales.

2. **Redireccionamiento a pagina de Inicio**
    - Luego de ingresar a la aplicacion esta se redirecciona automaticamenta a la pagina de inicio donde se encuentra un boton para comenzar a escanear.

3. **Redireccionamiento a la pagina de scaneo**
    - Luego de presiona el boton de escanear se redirecciona a la pagina de escaneo.

4. **Acceso a permisos**
    - La aplicacion movil al requerir el acceso a la camara pedira los permisos respectivos.

5. **Escaneo**
    - Luego de contar con los permisos del dispotivo se tendra acceso a la camara desde dentro de la aplicacion , existe opcion de cambiar de camara trasera a delantera.

**Beneficios para usuarios**

1. **Conveniencia**
   - Permite a los usuarios acceder rápidamente a información o servicios simplemente escaneando un código QR, eliminando la necesidad de teclear URLs o buscar información manualmente.

2. **Ahorro de Tiempo**
   - El escaneo de códigos QR es un proceso rápido que ahorra tiempo en comparación con la entrada manual de datos.

3. **Versatilidad**
   - Los códigos QR pueden contener una amplia variedad de información, desde enlaces web hasta vCards, facilitando el acceso a diversos tipos de contenidos.

4. **Mejora de la Experiencia de Usuario**
   - Una aplicación intuitiva y fácil de usar mejora la experiencia general del usuario.

5. **Accesibilidad**
    - La capacidad de utilizar tanto la cámara trasera como la delantera hace que la aplicación sea más accesible para diferentes situaciones y preferencias de usuario.
  
# Diseño de interfaz

[![imagen-2023-11-11-222435778.png](https://i.postimg.cc/2yKVfg7t/imagen-2023-11-11-222435778.png)](https://postimg.cc/wRD6XfP5)

# Implementacion 
    En implementación contamos con 3 codigos diferentes, cuales son los de inicio de aplicación, Scan_Screen  y el main el cual ejecuta todo el codigo.


```plaintext
# Arquitectura 
|-- lib
|   |-- main.dart
|   |-- screen
|       |-- inicio.dart
|       |-- scan_screen.dart
|-- assets
|   |-- images
|       |-- logoUcm.png
|       |-- image.png
|-- ...
```
# Caso de Uso Hipotetico: Sistema de Check-In en Eventos.

**Contexto**

Aplicación diseñada para gestionar eventos, como conferencias, conciertos o ferias. Los asistentes pueden usar la aplicación para escanear un código QR en su entrada (física o digital) para realizar un check-in rápido al evento.

**Funcionalidades Clave**

1. **Registro Rápido** 
   - Al escanear el código QR de la entrada, el usuario se registra automáticamente en el evento.

2. **Información del Evento** 
   - Una vez hecho el check-in, la aplicación muestra detalles relevantes como el programa, el mapa del lugar, y sesiones o actividades específicas.

3. **Interacción Personalizada** 
   - Basado en la información del código QR, la aplicación puede ofrecer una experiencia personalizada, mostrando sesiones recomendadas, ofertas especiales, o recordatorios.

4. **Redes Sociales y Compartir**
   - Permite a los usuarios compartir su participación o experiencias en el evento en redes sociales directamente desde la aplicación.

**Diseño de la Aplicación**

1. Pantalla de Inicio para el Evento: Incluye una sección clara para el escaneo del código QR.

2. Guía Visual para el Escaneo: Proporciona una interfaz sencilla para que el usuario pueda escanear su entrada fácilmente.

3. Feedback Visual y Sonoro: Confirma el check-in exitoso con una respuesta visual y, posiblemente, un sonido característico.

4. Acceso a Información Post-Escaneo: Después de escanear, dirige al usuario a una página con información sobre el evento o actividades personalizadas.
Soporte y Ayuda: Ofrece asistencia para los usuarios que enfrenten dificultades con el escáner.

**Consideraciones Técnicas**

1. Escalabilidad: Asegura que la aplicación pueda manejar un alto volumen de escaneos en un corto período, común en eventos grandes.

2. Offline Capabilities: Considera la posibilidad de funcionalidad offline para situaciones donde la conexión a Internet es limitada.

3. Integración con Bases de Datos de Eventos: Asegura una integración fluida con bases de datos para verificar entradas y registrar asistencia.

**Conclusión**

Este caso de uso proporciona una manera eficiente y moderna de manejar el registro y check-in en eventos, mejorando la experiencia del usuario y optimizando la gestión del evento. La integración del escáner de códigos QR debe ser intuitiva y agregar valor significativo a la experiencia general de la aplicación.




