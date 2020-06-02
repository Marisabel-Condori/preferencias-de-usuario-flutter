import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/share_pref/preferencias_usuario.dart';
import 'package:preferencias_de_usuario/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario;
  int _genero;
  String _nombre;

  final prefs = new PreferenciasUsuario();

  TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    bool _colorSecundario = prefs.colorSecundario;
    int _genero = prefs.genero;
    String _nombre = prefs.nombre;
    _textController = TextEditingController(text: _nombre);
  }

  _setSelectedRadio(int valor) {
    prefs.genero = valor;
     _genero = prefs.genero;
    setState(() {  });
  }

  _setSelectedColorSec(bool valor) {
    prefs.colorSecundario = valor;
     _colorSecundario = prefs.colorSecundario;
    setState(() {  });
  }

  _setSelectedNombre(String valor) {
    prefs.nombre = valor;
     _nombre = prefs.nombre;
    setState(() {  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Text('Settings', 
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold) 
          ),
          SwitchListTile(
            title: Text('Color secundario'),
            value: _colorSecundario, 
            onChanged: _setSelectedColorSec,
          ),
          RadioListTile(
            title: Text('Masculino'),
            value: 1, 
            groupValue: _genero, 
            onChanged: _setSelectedRadio
          ),
          RadioListTile(
            title: Text('Femenino'),
            value: 2, 
            groupValue: _genero, 
            onChanged: _setSelectedRadio
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: TextEditingController(text: _nombre),
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el telefono'
              ),
              onChanged: _setSelectedNombre,
            ),
          )
        ],
      )
    );
  }
}