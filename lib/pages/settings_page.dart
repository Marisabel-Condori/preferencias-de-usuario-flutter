import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/menu_widget.dart';

class SettingsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'),
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Text('ajustes')
      ),
    );
  }
}