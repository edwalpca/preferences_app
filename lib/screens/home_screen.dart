import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/share_preferences/preferences.dart';
import 'package:tsw_preferences_app/widgets/widgets_export.dart';

class HomeScreen extends StatelessWidget {
  // Utilizado para el Manejo de Pantalla con nombres estaticos
  // dentro del App, la declaro como una constante stattica porque nunca va a cambiar,
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    final String tema = Preferences.isDarkMode ? 'Encendido' : 'Apagado';
    final String genero = Preferences.gender == 1 ? 'Masculino' : 'Femenino';

    return Scaffold(
        appBar: AppBar(title: const Text('Home Screen Page')),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dark Mode: $tema'),
            const Divider(),
            Text('Genero:  $genero'),
            const Divider(),
            Text('Nombre Usuario: ${Preferences.name} ')
          ],
        ));
  }
}
