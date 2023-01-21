import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/widgets/widgets_export.dart';

class SettingScreen extends StatelessWidget {
  // Utilizado para el Manejo de Pantalla con nombres estaticos
  // dentro del App
  static const String routerName = 'Settings';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //Widget de la Columna
          children: [
            const Text('Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
            const Divider(),

            //Este es un componente adaptativo que depdneiente del sistema
            //operativo que se esta utilizando.-
            SwitchListTile(
                title: Text('DarkMode'), value: true, onChanged: (value) {}),
            const Divider(),

            RadioListTile<int>(
                title: const Text('Masculino'),
                value: 1,
                groupValue: 1,
                onChanged: (value) {}),
            const Divider(),
            RadioListTile<int>(
                title: const Text('Femenino'),
                value: 2,
                groupValue: 1,
                onChanged: (value) {}),
            const Divider(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Mauricio Alpizar',
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre del Usuario'
                  
                  ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
