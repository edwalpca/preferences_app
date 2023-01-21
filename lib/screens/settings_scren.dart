import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tsw_preferences_app/providers/theme_provider.dart';
import 'package:tsw_preferences_app/share_preferences/preferences.dart';
import 'package:tsw_preferences_app/widgets/widgets_export.dart';

class SettingScreen extends StatefulWidget {
  // Utilizado para el Manejo de Pantalla con nombres estaticos
  // dentro del App
  static const String routerName = 'Settings';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  //Variables del Formulario.
  // bool isDarkMode = false;
  // int gender = 1; //Masculino;
  // String name = 'Mauricio Alpizar Castro';

  @override
  Widget build(BuildContext context) {
    //
    //
    //
    final currentThemeProvider = Provider.of<ThemeProvider>(context, listen:false);

    //

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
            const Center(
              child:  Text('Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
            ),
            const Divider(),

            //Este es un componente adaptativo que depdneiente del sistema
            //operativo que se esta utilizando.-
            SwitchListTile(
                title: const Text('Habilitar El Dark Mode'),
                value: Preferences.isDarkMode,
                onChanged: (value) {
                  Preferences.isDarkMode = value;
                  //
                  //
                  if (value) {
                    currentThemeProvider.setDarkmode();
                  } else {
                    currentThemeProvider.setLigthMode();
                  }
                  //Mando a llamar al setState para redibujar el Widget.
                  setState(() {});
                }),
            const Divider(),

            RadioListTile<int>(
                title: const Text('Masculino'),
                value: 1,
                groupValue: Preferences.gender,
                onChanged: (value) {
                  //Aqui pregunto si el value es nulo que le mande un 1
                  Preferences.gender = value ?? 1;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile<int>(
                title: const Text('Femenino'),
                value: 2,
                groupValue: Preferences.gender,
                onChanged: (value) {
                  //Aqui pregunto si el value es nulo que le mande un 2
                  Preferences.gender = value ?? 2;
                  setState(() {});
                }),
            const Divider(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: Preferences.name,
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del Usuario:${Preferences.name}'),
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
