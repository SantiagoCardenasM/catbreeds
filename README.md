
# CatBreeds

_La aplicación móvil desarrollada tiene como objetivo mostrar información detallada sobre diferentes razas de gatos utilizando la API pública de The Cat API. La app ha sido construida utilizando el framework Flutter, siguiendo los principios de la arquitectura limpia para asegurar un código modular, mantenible y escalable._

## Estructura del Proyecto

El proyecto sigue una estructura basada en la arquitectura limpia, que facilita la separación de responsabilidades y la organización del código. A continuación, se describe la estructura de carpetas utilizada:

- **lib/**: Carpeta principal que contiene todo el código fuente del proyecto.
  - **src/**: Contiene el código fuente de la aplicación.
    - **core/**: Incluye todos los archivos de apoyo que son fundamentales para el funcionamiento de la aplicación.
    - **datasource/**: Contiene la lógica de conexión con la API de The Cat API, encargada de proporcionar los datos a trabajar.
    - **logic/**: Contiene el gestor de estados de la aplicación, implementado con el patrón BLoC.
    - **models/**: Define los modelos u objetos de datos que se utilizan en la aplicación.
    - **pages/**: Incluye las diferentes páginas que se muestran en la interfaz de usuario.
    - **ui/**: Contiene componentes de la interfaz gráfica independientes, que facilitan la construcción de las páginas.

Para la compilación y ejecución de la aplicación, es necesario obtener una API Key de [The Cat API](https://thecatapi.com/). Esta clave debe ser configurada en una variable de entorno dentro del archivo `.env` con la llave APIKEY.

## Comenzando 🚀

Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas.

### Pre-requisitos 📋

_Antes de empezar, asegúrate de tener instalados los siguientes programas y herramientas:_

- **Git**: Para clonar el repositorio y gestionar el control de versiones.
  - [Instrucciones de instalación](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  
- **JDK 1.8**: Requerido para la compilación y ejecución de la aplicación en Android.
  - [Descargar JDK 1.8](https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=416&field_operating_system_target_id=436&field_architecture_target_id=391&field_java_package_target_id=396)

- **Android Studio**: Necesario para la emulación de dispositivos Android y la compilación del proyecto.
  - [Descargar e instalar Android Studio](https://developer.android.com/studio?hl=es-419)

- **Visual Studio Code**: Editor de código recomendado para trabajar con Flutter.
  - [Descargar Visual Studio Code](https://code.visualstudio.com/)

- **Flutter SDK 3.24.0**: _NOTA: Es necesario descargar e instalar esta versión específica para asegurar la compatibilidad._
  - [Descargar Flutter SDK](https://docs.flutter.dev/development/tools/sdk/releases)
  - **Ruta de instalación recomendada**: `C:\flutter`

### Configuración de Variables de Entorno

_Asegúrate de configurar correctamente las variables de entorno necesarias:_

- `JAVA_HOME`:
  ```
  C:\java\jdk-8
  ```

## Instalación del Proyecto 🔧

_Sigue estos pasos para instalar y configurar el entorno de desarrollo:_

1. **Clonar el Repositorio**:  
   Abre una terminal en VS Code y clona el repositorio:
   ```
   git clone
   ```

2. **Instalar Dependencias**:  
   Ejecuta el siguiente comando para descargar todas las dependencias del proyecto:
   ```
   flutter pub get
   ```

3. **Compilar Clases Generadas**:  
   Para compilar las clases generadas por build value, ejecuta:
   ```
   flutter pub run build_runner watch --delete-conflicting-outputs
   ```

4. **Configurar el Dispositivo para la Instalación**:  
   Conecta y selecciona un dispositivo (físico o emulado) en el que quieras ejecutar la aplicación.

5. **Ejecutar la Aplicación**:  
   Inicia la aplicación con el siguiente comando:
   ```
   flutter run
   ```

## Compilación de APK 📦

_Para compartir la aplicación con otros dispositivos o subirla a la Play Store, sigue estos pasos:_

1. **Compilar APK**:
   ```
   flutter build apk --obfuscate --split-debug-info=./symbols
   ```


## Autor ✒️

* **Santiago Cárdenas** - *Desarrollador Flutter*
