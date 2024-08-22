
CatBreeds
La aplicación móvil desarrollada tiene como objetivo mostrar información detallada sobre diferentes razas de gatos utilizando la API pública de The Cat API. La app ha sido construida utilizando el framework Flutter, siguiendo los principios de la arquitectura limpia para asegurar un código modular, mantenible y escalable.

Estructura del Proyecto
El proyecto sigue una estructura basada en la arquitectura limpia, que facilita la separación de responsabilidades y la organización del código. A continuación, se describe la estructura de carpetas utilizada:

life/: Carpeta principal que contiene todo el código fuente del proyecto.
core/: Incluye todos los archivos de apoyo que son fundamentales para el funcionamiento de la aplicación.
data_source/: Contiene la lógica de conexión con la API de The Cat API, encargada de proporcionar los datos a trabajar.
logic/: Contiene el gestor de estados de la aplicación, implementado con el patrón BLoC.
models/: Define los modelos u objetos de datos que se utilizan en la aplicación.
pages/: Incluye las diferentes páginas que se muestran en la interfaz de usuario.
ui/: Contiene componentes de la interfaz gráfica independientes, que facilitan la construcción de las páginas.
Para la compilación y ejecución de la aplicación, es necesario obtener una API Key de The Cat API. Esta clave debe ser configurada en una variable de entorno dentro del archivo .env.

Comenzando 🚀
Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas.

Pre-requisitos 📋
Antes de empezar, asegúrate de tener instalados los siguientes programas y herramientas:

Git: Para clonar el repositorio y gestionar el control de versiones.

Instrucciones de instalación
JDK 1.8: Requerido para la compilación y ejecución de la aplicación en Android.

Descargar JDK 1.8
Android Studio: Necesario para la emulación de dispositivos Android y la compilación del proyecto.

Descargar e instalar Android Studio
Visual Studio Code: Editor de código recomendado para trabajar con Flutter.

Descargar Visual Studio Code
Flutter SDK 2.0.4: NOTA: Es necesario descargar e instalar esta versión específica para asegurar la compatibilidad.

Descargar Flutter SDK
Ruta de instalación recomendada: C:\flutter
Configuración de Variables de Entorno
Asegúrate de configurar correctamente las variables de entorno necesarias:

JAVA_HOME:
makefile
Copiar código
C:\java\jdk-8
ANDROID_HOME y ANDROID_SDK_ROOT:
makefile
Copiar código
C:\Users\NOMBREUSUARIO\AppData\Local\Android\Sdk
Agregar a PATH:
python
Copiar código
C:\flutter\bin
%JAVA_HOME%\bin
Instalación del Proyecto 🔧
Sigue estos pasos para instalar y configurar el entorno de desarrollo:

Clonar el Repositorio:
Abre una terminal en VS Code y clona el repositorio:

bash
Copiar código
git clone [URL del repositorio]
Instalar Dependencias:
Ejecuta el siguiente comando para descargar todas las dependencias del proyecto:

arduino
Copiar código
flutter pub get
Compilar Clases Generadas:
Para compilar las clases generadas por build value, ejecuta:

arduino
Copiar código
flutter pub run build_runner watch --delete-conflicting-outputs
Configurar el Dispositivo para la Instalación:
Conecta y selecciona un dispositivo (físico o emulado) en el que quieras ejecutar la aplicación.

Ejecutar la Aplicación:
Inicia la aplicación con el siguiente comando:

arduino
Copiar código
flutter run
Compilación de APK 📦
Para compartir la aplicación con otros dispositivos o subirla a la Play Store, sigue estos pasos:

Compilar APK para Distribución:

css
Copiar código
flutter build apk --obfuscate --split-debug-info=./symbols
Compilar APK para la Play Store:

css
Copiar código
flutter build apk --obfuscate --split-debug-info=./symbols
Autor ✒️
Santiago Cárdenas - Desarrollador Flutter