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
    -En implementación contamos con 3 codigos diferentes, cuales son los de inicio de aplicación, Scan_Screen y el main el cual ejecuta todod el codigo.



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





