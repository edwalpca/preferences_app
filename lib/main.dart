import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/screens/screens_export.dart';
import 'package:tsw_preferences_app/share_preferences/preferences.dart';

// void main() => runApp(const MyApp());

void main() async {
  
  
  //Estas dos lineas son para asegurarnos de la inizalizacion de la instancia de las preferencias
  //del App, el main debe ser asyncrono.
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  //
  //
  //
  runApp(const MyApp());
  //
  //
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //Ruta Principal
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingScreen.routerName: (_) => const SettingScreen(),
        PeopleScreen.routerName: (_) => const PeopleScreen(),
      },
      //theme: Preferences.isDarkMode ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
