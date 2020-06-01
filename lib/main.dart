import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/pages/home_page.dart';
import 'package:preferencias_de_usuario/pages/settings_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => HomePage(),
        'setting' : (BuildContext context) => SettingsPage(),
      },
    );
  }
}