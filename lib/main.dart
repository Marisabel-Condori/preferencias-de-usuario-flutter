import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/pages/home_page.dart';
import 'package:preferencias_de_usuario/pages/settings_page.dart';
import 'package:preferencias_de_usuario/share_pref/preferencias_usuario.dart';
 
void main() async { 
  WidgetsFlutterBinding.ensureInitialized(); 
  final prefs = new PreferenciasUsuario();
  await prefs.initPreferences();

  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: prefs.ultimaPagina,
      routes: {
        '/' : (BuildContext context) => HomePage(),
        'setting' : (BuildContext context) => SettingsPage(),
      },
    );
  }
}