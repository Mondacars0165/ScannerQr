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
   - La implementacion del software fue separado en 3 secciones princiapales :
   - main.dart : En este archivo unicamente se especifica el titulo del proyecto , se elimina el banner de debug de la esquina superior derecha y luego reedirecciona la ejecucion a la funciona StartScreen() de inicio.dart
     **En `main.dart`:**
- **`MyApp`:**
  - `MaterialApp`: Proporciona una estructura básica para la aplicación Flutter.
    - `Scaffold`: Define la estructura básica de la interfaz de usuario.
      - `AppBar`: Representa la barra superior de la aplicación.
      - `StartScreen`: Pantalla de inicio de la aplicación.

   - inicio.dart : En este archivo se especifica la estructura de la vista de inicio donde se especifican lo que contiene el appBar (barra superior) ademas en el cuerpo se especifica un titulo de la vista , una imagen representativa de la aplicaicon QR y por ultimo un boton que al presionarlo redirecciona a la funcione Scaneo() encontrada en scan_screen.dart
   - **En `inicio.dart`:**

 - **`StartScreen`:**
  - `Scaffold`: Define la estructura básica de la interfaz de usuario.
    - `AppBar`: Representa la barra superior de la pantalla de inicio.
      - `Image`: Muestra una imagen en la barra de aplicación.
    - `Column`: Organiza los elementos en una columna vertical.
      - `Text`: Muestra un mensaje de bienvenida.
      - `Image`: Muestra una imagen en la pantalla.
      - `ElevatedButton`: Botón elevado para escanear códigos QR.

   - scan_screen.dart : implementa la funcionalidad de scaneo QR , permite cambiar entre camara trasera y delantera , captura imagenes y procesa automaticamente URLs de codigos Qr y tambien incluye un boton para mostrar el texto detectado y un texto para copiarlo al portapapeles
    **En `scan_screen.dart`:**

- **`Scaneo`:**
  - `_ScaneoState`: Define el estado mutable para la pantalla de escaneo.
    - `Scaffold`: Define la estructura básica de la interfaz de usuario.
      - `AppBar`: Representa la barra superior de la pantalla de escaneo.
        - `IconButton`: Botón de icono para cambiar entre la cámara frontal y trasera.
      - `Column`: Organiza los elementos en una columna vertical.
        - `Expanded`: Expande un widget hijo para ocupar todo el espacio disponible.
          - `MobileScanner`: Widget para la captura de códigos de barras.
        - `ElevatedButton` (condicional): Botón elevado para mostrar el texto del código QR detectado.




# Arquitectura 
```plaintext
|-- lib
|   |-- main.dart
|   |-- screen
|       |-- inicio.dart
|       |-- scan_screen.dart
|-- assets
|   |-- images
|       |-- logoUcm.png
|       |-- image.png
|-- android
|-- ios
|-- linux
|-- macos
|-- test
|-- web
|-- windows
```
# Caso de Uso Hipotetico: Acceso Rápido a Información Detallada desde Códigos QR Textuales.

**Contexto**

Tu aplicación cuenta con la funcionalidad única de permitir a los usuarios copiar el texto contenido en los códigos QR y, si dicho texto es un enlace, redirige automáticamente a la página web correspondiente. Esta característica se explora en un evento educativo donde se utilizan códigos QR para proporcionar información adicional sobre sesiones y recursos.

**Funcionalidades Clave**

1.**Copiado de Texto desde Códigos QR**
   -Los usuarios pueden utilizar la aplicación para copiar el texto directamente desde los códigos QR presentes en materiales impresos o pantallas digitales..

2. **Reconocimiento de Enlaces Web** 
   -La aplicación identifica si el texto copiado es un enlace web y, en ese caso, activa automáticamente la redirección a la página web correspondiente.

3. **Acceso a Recursos y Contenido Adiciona** 
   - Si el código QR contiene información como enlaces a presentaciones, recursos educativos o material complementario, la aplicación facilita un acceso rápido y directo.

**Escenario de uso**
1.**Materiales Impresos en un Evento Educativo**
    - Los organizadores del evento distribuyen folletos impresos que contienen códigos QR junto con descripciones de sesiones y charlas.
2.**Copiado del Código QR**
    - Un asistente utiliza la aplicación para copiar el texto del código QR presente en el folleto.
3.**Redirección Automática**
    - La aplicación reconoce que el texto copiado es un enlace web y redirige automáticamente al asistente a la página web que contiene detalles adicionales sobre la sesión o charla mencionada en el folleto.
    
**Diseño de la Aplicación**

1. Pantalla de bienvenida de la aplicación: Incluye una sección clara para el escaneo del código QR.
2. Pantalla de Escaneo: Proporciona una pantalla en donde se define como funcione el escaneo y los botones correspondientes.
.
**Consideraciones Técnicas**

1. Escalabilidad: Asegura que la aplicación pueda manejar un alto volumen de escaneos en un corto período, común en eventos grandes.

2. Offline Capabilities: Considera la posibilidad de funcionalidad offline para situaciones donde la conexión a Internet es limitada.


**Conclusión**

La aplicación diseñada para escanear códigos QR con ambas cámaras, permitiendo el copiado de texto y la redirección a enlaces, representa una solución ágil y versátil. La combinación de funciones como el escaneo dual, la identificación de enlaces y la experiencia de usuario intuitiva ofrece una herramienta eficaz para la interacción con códigos QR en diversos escenarios.



