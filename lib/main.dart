import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:infocea/bienvenida/bienvenida_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard/dashboard_widget.dart';
import 'ingreso_animales/ingreso_animales_widget.dart';
import 'rendimiento_canal/rendimiento_canal_widget.dart';
import 'decomisos/decomisos_widget.dart';
import 'despachos/despachos_widget.dart';
import 'desposte/desposte_widget.dart';
import 'new_ingreso_animales/new_ingreso_animales_widget.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
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
      'newIngresoAnimales': NewIngresoAnimalesWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).primaryColor,
        unselectedItemColor: Color(0xFFC2CAD9),
        selectedBackgroundColor: Color(0x002A2A2A),
        borderRadius: 5,
        itemBorderRadius: 1,
        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
        width: MediaQuery.of(context).size.width * 0.9,
        elevation: 5,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.dashboard,
                  color: currentIndex == 0
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.angleDoubleDown,
                  color: currentIndex == 1
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_balance_wallet_rounded,
                  color: currentIndex == 2
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cancel_outlined,
                  color: currentIndex == 3
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.airport_shuttle_rounded,
                  color: currentIndex == 4
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.content_cut_rounded,
                  color: currentIndex == 5
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.threed_rotation_sharp,
                  color: currentIndex == 6
                      ? FlutterFlowTheme.of(context).primaryColor
                      : Color(0xFFC2CAD9),
                  size: 24,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
