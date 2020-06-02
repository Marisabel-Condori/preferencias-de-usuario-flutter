import 'package:flutter/material.dart';
import 'package:preferencias_de_usuario/widgets/menu_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario = true;
  int _genero = 1;
  String _nombre = 'Pedro';

  TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    cargarPref();
    _textController = TextEditingController(text: _nombre);
  }

  cargarPref() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _genero = prefs.getInt('genero');
    setState(() {  });
  }

  _setSelectedRadio(int valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('genero', valor);
     _genero = valor;
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
            onChanged: (value){
              _colorSecundario = value;
              setState(() {  });
            }
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
            ),
          )
        ],
      )
    );
  }
}