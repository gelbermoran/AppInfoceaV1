import '../backend/api_requests/api_calls.dart';
import '../bienvenida/bienvenida_widget.dart';
import '../components/avatar_widget.dart';
import '../configuracion/configuracion_widget.dart';
import '../estadisticas/estadisticas_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  ApiCallResponse apiCallOutput;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 180,
                child: Stack(
                  children: [
                    ClipRect(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 0,
                          sigmaY: 0,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 370,
                          decoration: BoxDecoration(
                            color: Color(0xFF262D34),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/ingreso.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 370,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF1E2429), Color(0x001E2429)],
                          stops: [0, 1],
                          begin: AlignmentDirectional(0, 1),
                          end: AlignmentDirectional(0, -1),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Color(0xFFDBE2E7),
                                        borderRadius: 8,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          color: Color(0xFF57636C),
                                          size: 20,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NavBarPage(
                                                  initialPage: 'Dashboard'),
                                            ),
                                          );
                                        },
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Color(0xFFDBE2E7),
                                        borderRadius: 8,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        icon: Icon(
                                          Icons.settings_rounded,
                                          color: Color(0xFF57636C),
                                          size: 20,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  ConfiguracionWidget(),
                                            ),
                                          );
                                        },
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Color(0xFFDBE2E7),
                                        borderRadius: 8,
                                        borderWidth: 1,
                                        buttonSize: 40,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        icon: Icon(
                                          Icons.login_rounded,
                                          color: Color(0xFF57636C),
                                          size: 20,
                                        ),
                                        onPressed: () async {
                                          apiCallOutput =
                                              await SalidaDelUsuarioCall.call(
                                            token: FFAppState().token,
                                          );
                                          if (apiCallOutput.succeeded) {
                                            setState(
                                                () => FFAppState().token = '');
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(
                                                      'Problemas de Conectividad'),
                                                  content: Text(
                                                      'En este momento no pudimos salir de la sesión de usuario, intente más tarde'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: Text('Cerrar'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  BienvenidaWidget(),
                                            ),
                                          );
                                          setState(
                                              () => FFAppState().usuarioId = 0);
                                          setState(() =>
                                              FFAppState().usuarioNombre = '');
                                          setState(() =>
                                              FFAppState().usuarioEmail = '');
                                          setState(() => FFAppState()
                                                  .usuarioAvatar =
                                              'https://ceagrodex.parquesoft.co/storage/users/default.png');
                                          setState(() =>
                                              FFAppState().fechaToken = '');

                                          setState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Perfil',
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 0, 24, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'de usuario',
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Color(0xB3FFFFFF),
                                              fontSize: 22,
                                              fontWeight: FontWeight.w100,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        FFAppState().usuarioNombre,
                                        'Usuario',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Hind Siliguri',
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onLongPress: () async {
                                            await Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BienvenidaWidget(),
                                              ),
                                              (r) => false,
                                            );
                                          },
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(),
                                            child: InkWell(
                                              onLongPress: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        BienvenidaWidget(),
                                                  ),
                                                );
                                              },
                                              child: AvatarWidget(
                                                lado: 60,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              FFAppState().usuarioEmail,
                                              'usuario@email.com',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Hind Siliguri',
                                                  fontSize: 14,
                                                ),
                                          ),
                                          Text(
                                            FFAppState().fechaToken,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x3F06673C),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: TotalOperacionesCall.call(
                            cliente: FFAppState().usuarioId.toString(),
                            operacion: 'ingreso',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRing(
                                    color: Color(0xFF37B54A),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            final colIngresoTotalOperacionesResponse =
                                snapshot.data;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NavBarPage(
                                        initialPage: 'IngresoAnimales'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Icon-Ingreso.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  AutoSizeText(
                                    'Ingreso de Animales',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    getJsonField(
                                      (colIngresoTotalOperacionesResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.total''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'operaciones',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x598C0E03),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: TotalOperacionesCall.call(
                            cliente: FFAppState().usuarioId.toString(),
                            operacion: 'rendimiento',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRing(
                                    color: Color(0xFF37B54A),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            final colRendimientoTotalOperacionesResponse =
                                snapshot.data;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NavBarPage(
                                        initialPage: 'RendimientoCanal'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Icon-rendimiento.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  AutoSizeText(
                                    'Rendimiento Canales',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: Color(0xFF8C0E03),
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    getJsonField(
                                      (colRendimientoTotalOperacionesResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.total''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: Color(0xFF8C0E03),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'operaciones',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF8C0E03),
                                        ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x3FF8AB74),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: TotalOperacionesCall.call(
                            cliente: FFAppState().usuarioId.toString(),
                            operacion: 'decomiso',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRing(
                                    color: Color(0xFF37B54A),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            final colDecomisosTotalOperacionesResponse =
                                snapshot.data;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'Decomisos'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Icon-decomisos.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Decomisos',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    getJsonField(
                                      (colDecomisosTotalOperacionesResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.total''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'operaciones',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x3FD0CDFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: TotalOperacionesCall.call(
                            cliente: FFAppState().usuarioId.toString(),
                            operacion: 'desposte',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRing(
                                    color: Color(0xFF37B54A),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            final colDesposteTotalOperacionesResponse =
                                snapshot.data;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'Desposte'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Icon-desposte.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Desposte',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    getJsonField(
                                      (colDesposteTotalOperacionesResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.total''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'operaciones',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x4E1A5491),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FutureBuilder<ApiCallResponse>(
                          future: TotalOperacionesCall.call(
                            cliente: FFAppState().usuarioId.toString(),
                            operacion: 'despacho',
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitRing(
                                    color: Color(0xFF37B54A),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            final colDespachoTotalOperacionesResponse =
                                snapshot.data;
                            return InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        NavBarPage(initialPage: 'Despachos'),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Icon-despacho.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'Despacho Transporte',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                        ),
                                  ),
                                  Text(
                                    getJsonField(
                                      (colDespachoTotalOperacionesResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.total''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Hind Siliguri',
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'operaciones',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0x40C6CEDD),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EstadisticasWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Icon-analitica.png',
                                width: 48,
                                height: 48,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Analítica de Datos',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Hind Siliguri',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
