import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static bool _isDarKMode = false;
  static int _gender = 1;
  static String _name = '';

  //Este metodo es asi y no cambia para poder crear la instancia inicializada
  //de mi sharePreference.
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  //
  //
  //
  //
  //Realizo la implementacion de los metodos getter
  //que eventualmente me estarian devolviendo por el key utilizado para
  //almacenar los valores respectivos que se enviaron a almacenar con esos keys.
  static String get name {
    return _prefs.getString('KName') ?? _name;
  }

  //
  static int get gender {
    return _prefs.getInt('KGender') ?? _gender;
  }

  //
  static bool get isDarkMode {
    return _prefs.getBool('KDarkMode') ?? _isDarKMode;
  }

  //
  //
  //Implementacion de los setter para enviar a almacenar los valores de mis preferencias.
  static set name(String name) {
    _name = name;
    _prefs.setString('KName', name);
  }
  //
  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt('KGender', gender);
  }
  //  
  static set isDarkMode(bool isDarkmode) {
    _isDarKMode = isDarkmode;
    _prefs.setBool('KDarkMode', isDarkmode);
  }  
}
