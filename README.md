# Gestión de Seguros

Aplicación móvil desarrollada en Flutter para la gestión de seguros personales. Esta app permite a los usuarios registrarse, iniciar sesión, contratar seguros, visualizar sus pólizas activas y gestionar su perfil de usuario.

Este repositorio contiene únicamente el **frontend** desarrollado en Flutter. El backend, implementado en PHP con Symfony, se encuentra en un repositorio independiente y no forma parte de este proyecto.

## Funcionalidades principales

- Registro de nuevos usuarios.
- Envío de un código de verificación por correo electrónico para completar el registro.
- Inicio de sesión con autenticación segura.
- Visualización de los seguros contratados por el usuario.
- Contratación de nuevos seguros.
- Visualización y edición del perfil del usuario.
- Cambio de contraseña.
- Interfaz adaptada a móviles con tema oscuro (dark mode).

## Tecnologías utilizadas

- Flutter (Dart)
- Comunicación con API RESTful
- Gestión de estado (por ejemplo, Provider)
- Validación de formularios
- Diseño responsive orientado a dispositivos móviles

## Instalación y ejecución

1. Clona este repositorio:

   ```bash
   git clone https://github.com/JuanCarlos92/Gestion_de_seguros.git
   cd Gestion_de_seguro
   ```
2. Instala las dependencias:
   ```bash
   flutter pub get
   ```
3. Ejecuta la aplicación:
   ```bash
   flutter run
   ```
Asegúrate de tener configurado un emulador o dispositivo físico y que el backend esté disponible en la URL esperada.

## Estado del proyecto

- Registro y login funcionales
- Verificación por correo electrónico
- Visualización y contratación de seguros
- Gestión del perfil de usuario
   
