import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inicio'),
      ),
      drawer: _crearDrawer(context),
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

  Drawer _crearDrawer(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/menu-img.jpg'), fit: BoxFit.cover)
            ),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.blue,),
            title: Text('uno'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.blue,),
            title: Text('dos'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.ac_unit, color: Colors.blue,),
            title: Text('people'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue,),
            title: Text('Settings'),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'setting');
            },
          ),
        ],
      ) 
    );
  }
}