import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('ff_token') ?? _token;
    _usuarioId = prefs.getInt('ff_usuarioId') ?? _usuarioId;
    _usuarioNombre = prefs.getString('ff_usuarioNombre') ?? _usuarioNombre;
    _usuarioEmail = prefs.getString('ff_usuarioEmail') ?? _usuarioEmail;
    _usuarioAvatar = prefs.getString('ff_usuarioAvatar') ?? _usuarioAvatar;
    _fechaToken = prefs.getString('ff_fechaToken') ?? _fechaToken;
    _notificaciones = prefs.getString('ff_notificaciones') ?? _notificaciones;
    _sonidosNotificaciones =
        prefs.getString('ff_sonidosNotificaciones') ?? _sonidosNotificaciones;
  }

  SharedPreferences prefs;

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  int _usuarioId = 0;
  int get usuarioId => _usuarioId;
  set usuarioId(int _value) {
    _usuarioId = _value;
    prefs.setInt('ff_usuarioId', _value);
  }

  String _usuarioNombre = '';
  String get usuarioNombre => _usuarioNombre;
  set usuarioNombre(String _value) {
    _usuarioNombre = _value;
    prefs.setString('ff_usuarioNombre', _value);
  }

  String _usuarioEmail = '';
  String get usuarioEmail => _usuarioEmail;
  set usuarioEmail(String _value) {
    _usuarioEmail = _value;
    prefs.setString('ff_usuarioEmail', _value);
  }

  String _usuarioAvatar =
      'https://ceagrodex.parquesoft.co/storage/users/default.png';
  String get usuarioAvatar => _usuarioAvatar;
  set usuarioAvatar(String _value) {
    _usuarioAvatar = _value;
    prefs.setString('ff_usuarioAvatar', _value);
  }

  String _fechaToken = '';
  String get fechaToken => _fechaToken;
  set fechaToken(String _value) {
    _fechaToken = _value;
    prefs.setString('ff_fechaToken', _value);
  }

  String _notificaciones = 'Si';
  String get notificaciones => _notificaciones;
  set notificaciones(String _value) {
    _notificaciones = _value;
    prefs.setString('ff_notificaciones', _value);
  }

  String _sonidosNotificaciones = 'No';
  String get sonidosNotificaciones => _sonidosNotificaciones;
  set sonidosNotificaciones(String _value) {
    _sonidosNotificaciones = _value;
    prefs.setString('ff_sonidosNotificaciones', _value);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
