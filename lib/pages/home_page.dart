import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/share_pref/preferencias_usuario.dart';
import 'package:preferencias_de_usuario/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal: Colors.blue,
      ),
      drawer: MenuWidget(),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('color secundario: ${prefs.colorSecundario}'),
            Divider(),
            Text('genero: ${prefs.genero}'),
            Divider(),
            Text('nombre usuario: ${prefs.nombre}'),
          ],
        ),
    );
  }
}