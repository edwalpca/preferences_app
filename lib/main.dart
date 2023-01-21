import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/screens/screens_export.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //Ruta Principal
      initialRoute: HomeScreen.routerName,
      routes: {

        HomeScreen.routerName     : ( _ ) => const HomeScreen(),
        SettingScreen.routerName  : ( _ ) => const SettingScreen(),
        PeopleScreen.routerName   : ( _ ) => const PeopleScreen(),
      
      },

    );
  }
}
