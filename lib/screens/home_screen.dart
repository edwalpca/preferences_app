import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/widgets/widgets_export.dart';


class HomeScreen extends StatelessWidget {



  // Utilizado para el Manejo de Pantalla con nombres estaticos 
  // dentro del App, la declaro como una constante stattica porque nunca va a cambiar, 
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
       title: const Text('Home Screen Page')),
       drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [

          Text('Dark Mode: '),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre Usuario: ')

        ],
      )
   );
  }
}