import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// labelMedium : AppBar items
// labelLarge : about us Body head
// labelSmall : about us Body body & home body icon text
// headlineLarge : home body head & "Key figures"
// headlineMedium : home body body
// headlineSmall : home body icon numbers
// titleLarge : 'Our Suppliers'


ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.green,
  floatingActionButtonTheme:
  const FloatingActionButtonThemeData(backgroundColor: Colors.green),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.grey),
      titleTextStyle: TextStyle(
          fontFamily: 'Janna',
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 20),
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      )),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.green,
    elevation: 20,
  ),
  textTheme: const TextTheme(
    titleLarge:
    TextStyle(fontFamily: 'Janna', fontSize: 28,),
    titleSmall:
    TextStyle(fontFamily: 'Janna', fontSize: 10,),
    headlineSmall:
    TextStyle(fontFamily: 'Janna', fontSize: 22,),
    headlineLarge:
    TextStyle(fontFamily: 'Janna', fontSize: 22,),
    headlineMedium:
    TextStyle(fontFamily: 'Janna', fontSize: 18,),
    labelMedium:
    TextStyle(fontFamily: 'Janna', fontSize: 12,),
    labelLarge:
    TextStyle(fontFamily: 'Janna', fontSize: 18,),
    labelSmall:
    TextStyle(fontFamily: 'Janna',fontSize: 15,),
    displayLarge:
    TextStyle(fontFamily: 'Janna',fontSize: 30,),
    displayMedium:
    TextStyle(fontFamily: 'Janna',fontSize: 20,),
    displaySmall:
    TextStyle(fontFamily: 'Janna',fontSize: 25,),
  ),
);