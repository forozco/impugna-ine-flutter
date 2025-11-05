# Impugna INE Mobile 📱

Aplicación móvil Flutter para el sistema de impugnación del Instituto Nacional Electoral (INE) de México.

## 📋 Descripción

Aplicación móvil multiplataforma desarrollada en Flutter que permite a los ciudadanos gestionar y dar seguimiento a impugnaciones electorales de manera sencilla y accesible desde dispositivos iOS y Android.

## ✨ Características

- 🎨 **Diseño moderno** con paleta de colores institucional del INE (morado #582E73)
- 📝 **Wizard de registro** con stepper visual para proceso de impugnación
- 👥 **Gestión de usuarios** con perfil y configuración
- 🔐 **Autenticación segura**
- 📱 **Responsive design** optimizado para móviles
- 🎯 **Navegación intuitiva** con drawer lateral
- ✅ **Validación de formularios** en tiempo real
- 🔄 **Estado reactivo** con Riverpod

## 🚀 Tecnologías

- **Flutter** 3.x
- **Dart** 3.x
- **Riverpod** - Gestión de estado
- **Go Router** - Navegación declarativa
- **Freezed** - Generación de código inmutable
- **JSON Serializable** - Serialización de datos

## 📱 Plataformas Soportadas

- ✅ iOS 13.0+
- ✅ Android API 21+
- 🔜 Web (próximamente)

## 🛠️ Requisitos Previos

- Flutter SDK 3.0 o superior
- Dart SDK 3.0 o superior
- Xcode 15+ (para desarrollo iOS)
- Android Studio / Android SDK (para desarrollo Android)
- CocoaPods (para dependencias iOS)

## 📦 Instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/forozco/impugna-ine-flutter.git
   cd impugna-ine-flutter
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Generar código (si es necesario)**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Para iOS, instalar CocoaPods**
   ```bash
   cd ios
   pod install
   cd ..
   ```

## 🎯 Ejecutar la Aplicación

### Android
```bash
flutter run
```

### iOS
```bash
flutter run -d iPhone
```

### Modo Release
```bash
flutter run --release
```

## 📂 Estructura del Proyecto

```
lib/
├── core/                      # Funcionalidad compartida
│   ├── constants/            # Constantes de la app
│   ├── router/               # Configuración de rutas
│   ├── theme/                # Tema y colores
│   └── widgets/              # Widgets compartidos
├── features/                  # Módulos por funcionalidad
│   ├── auth/                 # Autenticación
│   ├── home/                 # Pantalla principal
│   ├── registro_impugnacion/ # Registro de impugnaciones
│   └── actores_involucrados/ # Gestión de actores
├── shared/                    # Componentes compartidos
│   └── widgets/              # Widgets reutilizables
└── main.dart                 # Punto de entrada
```

## 🎨 Paleta de Colores

- **Primario (Morado)**: `#582E73`
- **Secundario (Guinda)**: `#702042`
- **Terciario (Magenta)**: `#D31C6F`
- **Blanco**: `#FFFFFF`
- **Gris**: `#757575`

## 🧪 Testing

```bash
# Ejecutar todos los tests
flutter test

# Ejecutar tests con cobertura
flutter test --coverage
```

## 🏗️ Build

### Android APK
```bash
flutter build apk --release
```

### Android App Bundle
```bash
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 📝 Configuración de Desarrollo

### Variables de Entorno

Crear archivo `.env` en la raíz del proyecto:

```env
API_BASE_URL=https://api.ine.mx
API_TIMEOUT=30000
```

### Configuración de Xcode (iOS)

1. Abrir `ios/Runner.xcworkspace` en Xcode
2. Seleccionar tu equipo de desarrollo en "Signing & Capabilities"
3. Configurar Bundle Identifier: `com.ine.impugna.impugnaIneMobile`

## 🤝 Contribuir

1. Fork el proyecto
2. Crear una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abrir un Pull Request

## 📄 Licencia

Este proyecto es propiedad del Instituto Nacional Electoral (INE) de México.

## 👨‍💻 Autor

**Fernando Orozco** - [@forozco](https://github.com/forozco)

## 📞 Contacto

Para preguntas o soporte, contactar a: [estebangaona60@gmail.com](mailto:estebangaona60@gmail.com)

## 🙏 Agradecimientos

- Instituto Nacional Electoral (INE)
- Equipo de desarrollo Flutter
- Comunidad de código abierto

---

**Desarrollado con** ❤️ **usando Flutter**
