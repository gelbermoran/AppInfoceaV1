import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:infocea/bienvenida/bienvenida_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard/dashboard_widget.dart';
import 'ingreso_animales/ingreso_animales_widget.dart';
import 'rendimiento_canal/rendimiento_canal_widget.dart';
import 'decomisos/decomisos_widget.dart';
import 'despachos/despachos_widget.dart';
import 'desposte/desposte_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'flutter_flow/flutter_flow_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  // Initialize FFAppState.
  FFAppState();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infocea',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('es', ''),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: NavBarPage(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Dashboard';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Dashboard': DashboardWidget(),
      'IngresoAnimales': IngresoAnimalesWidget(),
      'RendimientoCanal': RendimientoCanalWidget(),
      'Decomisos': DecomisosWidget(),
      'Despachos': DespachosWidget(),
      'Desposte': DesposteWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).primaryColor,
        unselectedItemColor: Color(0xFFC2CAD9),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              size: 24,
            ),
            label: 'Inicio',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mediation_outlined,
              size: 24,
            ),
            label: 'Ingreso',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on_sharp,
              size: 24,
            ),
            label: 'Canal',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.policy_sharp,
              size: 24,
            ),
            label: 'Decomisos',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_shipping,
              size: 24,
            ),
            label: 'Despacho',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grain_rounded,
              size: 24,
            ),
            label: 'Desposte',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
