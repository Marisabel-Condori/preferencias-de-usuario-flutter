import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inicio'),
      ),
      body: Column(
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