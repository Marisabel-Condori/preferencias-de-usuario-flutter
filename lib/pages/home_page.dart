import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      drawer: MenuWidget(),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('color secundario'),
            Divider(),
            Text('genero'),
            Divider(),
            Text('nombre usuario'),
          ],
        ),
    );
  }
}