import 'package:flutter/material.dart';
 
// Clase AppTheme que contendrá la configuración de los temas claro y oscuro
class AppTheme {
  // 🎨 Colores principales (constantes que se reutilizan en el tema)
  static const Color primaryColor = Color(0xFF1565C0); // Azul elegante
  static const Color secondaryColor = Color(0xFF42A5F5); // Azul claro
  static const Color accentColor = Color(0xFF64B5F6); // Azul sutil extra
 
  // 🌞 Tema claro
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light, // Indica que este es un tema claro
    primaryColor: primaryColor, // Color principal de la app
    scaffoldBackgroundColor:
        Colors.grey[50], // Fondo principal de las pantallas
    // Esquema de colores para los diferentes elementos de la UI
    colorScheme: ColorScheme.light(
      primary: primaryColor, // Color primario
      secondary: secondaryColor, // Color secundario
      surface: Colors.white, // Fondo de tarjetas/áreas
      onPrimary: Colors.white, // Color del texto sobre el primario
      onSecondary: Colors.white, // Color del texto sobre el secundario
      onSurface: Colors.black87, // Color del texto sobre superficies claras
    ),
 
    // 🎛️ Estilo global de los botones elevados (ElevatedButton)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor, // Fondo del botón
        foregroundColor: Colors.white, // Texto/iconos del botón
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 18,
        ), // Espaciado interno
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ), // Estilo del texto
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ), // Bordes redondeados
        elevation: 2, // Sombra del botón
      ),
    ),
 
    // ✏️ Estilo global para campos de texto (TextField, InputDecoration)
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        // Borde por defecto
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      enabledBorder: OutlineInputBorder(
        // Borde cuando está habilitado
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        // Borde cuando el campo tiene foco
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: primaryColor, width: 1.5),
      ),
      filled: true, // Indica que el campo tendrá un fondo
      fillColor: Colors.white, // Color de fondo del campo
      hintStyle: TextStyle(
        color: Colors.grey[500],
      ), // Estilo del texto de sugerencia
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 14,
      ), // Relleno interno
    ),
 
    // 📝 Estilo global de los textos
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.black87,
        height: 1.5,
      ), // Texto grande
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.black54,
        height: 1.4,
      ), // Texto medio
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ), // Títulos
    ),
  );
 
  // 🌙 Tema oscuro
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark, // Indica que es tema oscuro
    primaryColor: Colors.deepPurple[400], // Color principal morado
    scaffoldBackgroundColor: const Color(0xFF121212), // Fondo oscuro de la app
    // Esquema de colores para modo oscuro
    colorScheme: ColorScheme.dark(
      primary: Colors.deepPurple[400]!, // Color primario
      secondary: Colors.deepPurple[200]!, // Color secundario
      surface: const Color(0xFF1E1E1E), // Fondo de tarjetas/áreas
      onPrimary: Colors.white, // Texto sobre color primario
      onSecondary: Colors.white, // Texto sobre color secundario
      onSurface: Colors.white70, // Texto sobre superficies oscuras
    ),
 
    // 🎛️ Estilo global de los botones elevados en tema oscuro
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple[400], // Fondo del botón
        foregroundColor: Colors.white, // Texto/iconos
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 18,
        ), // Espaciado interno
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ), // Estilo del texto
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ), // Bordes redondeados
      ),
    ),
 
    // ✏️ Estilo de los campos de texto en modo oscuro
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        // Borde por defecto
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade700),
      ),
      enabledBorder: OutlineInputBorder(
        // Borde habilitado
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade700),
      ),
      focusedBorder: OutlineInputBorder(
        // Borde con foco
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 1.5),
      ),
      filled: true, // Fondo en los inputs
      fillColor: const Color(0xFF1E1E1E), // Fondo gris oscuro
      hintStyle: TextStyle(
        color: Colors.grey[400],
      ), // Texto de sugerencia gris claro
      contentPadding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 14,
      ), // Relleno interno
    ),
 
    // 📝 Estilos de texto en tema oscuro
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
        height: 1.5,
      ), // Texto grande
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Colors.white70,
        height: 1.4,
      ), // Texto medio
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ), // Títulos
    ),
  );
}