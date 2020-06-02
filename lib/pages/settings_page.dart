import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/share_pref/preferencias_usuario.dart';
import 'package:preferencias_de_usuario/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final prefs = new PreferenciasUsuario();
  
  bool _colorSecundario;
  int _genero;
  String _nombre;

  TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    prefs.ultimaPagina = 'setting';
    _colorSecundario = prefs.colorSecundario;
    _genero = prefs.genero;
    _nombre = prefs.nombre;
    _textController = TextEditingController(text: prefs.nombre);
  }

  _setSelectedRadio(int valor) {
    prefs.genero = valor;
     _genero = prefs.genero;
    setState(() {  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal: Colors.blue,
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
            onChanged: (value) {
              _colorSecundario = value;
              prefs.colorSecundario = value; 
              setState(() {  });
            },
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
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el telefono'
              ),
              onChanged: (value){
                prefs.nombre = value;
                setState(() {  });
              },
            ),
          )
        ],
      )
    );
  }
}