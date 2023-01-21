import 'package:flutter/material.dart';
import 'package:tsw_preferences_app/screens/screens_export.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //Elimna el espacio utilizado entre laparte superriod del telefono
        // y el header del Drawer.
        padding: EdgeInsets.zero,
        children: [
          //Encabezado del Header
          // Se crea un nuevo Widget para simplificar el codigo.
          const _CustomDrawerHeader(),

          ListTile(
            leading: const Icon(Icons.home_max_outlined),
            title: const Text('Inicio'),
            onTap: () {
              //Navigator.pop(context);
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Personas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, PeopleScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              //Para cerrar el Drawer.
              //Navigator.pop(context);

              // //Para moverno a otra ventana usamos.
              Navigator.pushReplacementNamed(context, SettingScreen.routerName);

              // Navigator.pushReplacementNamed(context, SettingScreen.routerName);
            },
          )
        ],
      ),
    );
  }
}

class _CustomDrawerHeader extends StatelessWidget {
  const _CustomDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        padding: const EdgeInsets.all(0),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/menu-img.jpg'))),
        ));
  }
}
