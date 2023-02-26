import 'package:flutter/material.dart';

ThemeData themeDataLight(){
  return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(
        color: Colors.blue,
      ),
      popupMenuTheme: const PopupMenuThemeData(
          color: Color(0xFFFAFAFA)
      ),
      tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.black87,
          labelColor: Colors.black87
      ),
      iconTheme: const IconThemeData(
          color: Colors.black
      ),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStateProperty.all(
                  const Color(0xFF212529)
              )
          )
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.blue,
        onPrimary: Colors.blue,
        secondary: Colors.blueAccent,
        onSecondary: Colors.white,
        primaryContainer: Color.fromRGBO(213, 236, 255, 1.0),
        secondaryContainer: Color.fromRGBO(250, 250, 255, 1.0),
        error: Colors.white,
        onError: Colors.white,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.transparent,
        onSurface: Colors.black,
        onSurfaceVariant: Colors.white,
      )
  );
}
ThemeData themeDataDark(){
  return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      popupMenuTheme: const PopupMenuThemeData(
          color: Color(0xFF1C1B1F)
      ),
      tabBarTheme: const TabBarTheme(
        indicatorColor: Colors.blue,
        labelColor: Colors.blue,
      ),
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.blue,
        onPrimary: Colors.blue,
        secondary: Colors.blueAccent,
        onSecondary: Colors.black38,
        primaryContainer: Color.fromRGBO(213, 236, 255, 1.0),
        secondaryContainer: Color.fromRGBO(250, 250, 255, 1.0),
        error: Colors.black,
        onError: Colors.black,
        background: Colors.black38,
        onBackground: Colors.black38,
        surface: Colors.transparent,
        onSurface: Colors.white,
        onSurfaceVariant: Colors.black38,
      )

  );
}