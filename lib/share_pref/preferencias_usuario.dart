import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{
  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPreferences() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //  no se usara
  // bool _colorSecundario;
  // int _genero ;
  // String _nombre;

  get genero{
    return _prefs.getInt('genero') ?? 1;
  }
  set genero(int value){
    _prefs.setInt('genero', value);
  }


}