import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/widgets/widgets_export.dart';



class PeopleScreen extends StatelessWidget {

  
  //constante para Manejo de la navegacion de la pantalla.
  static const String routerName = 'PeopleScreen';
  

   
  const PeopleScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('People Screen Page'),
      ),
      drawer: const SideMenu(),
      body: const Center(
         child: Text('Formulario de la Persona'),
      ),
    );
  }
}