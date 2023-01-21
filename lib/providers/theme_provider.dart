import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  //
  //
  //Propiedades de mi clase
  ThemeData currentTheme;

  ThemeProvider(
      {
      //Variable Requerida en mi constructor.
      //para determinar si el DarkMode esta activo o no.
      required bool isDarkmode
      // Para inicializar la propiedad de mi clase en el constructor utilizo
      // el siguiente codigo
      })
      : currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();
  //
  //
  //
  setLigthMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  //
  setDarkmode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
