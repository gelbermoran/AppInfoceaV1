import '../backend/api_requests/api_calls.dart';
import '../dashboard/dashboard_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class IngresoWidget extends StatefulWidget {
  const IngresoWidget({Key key}) : super(key: key);

  @override
  _IngresoWidgetState createState() => _IngresoWidgetState();
}

class _IngresoWidgetState extends State<IngresoWidget> {
  ApiCallResponse rTALogin;
  TextEditingController claveIngresoController;
  bool claveIngresoVisibility;
  TextEditingController correoIngresoController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    claveIngresoController = TextEditingController();
    claveIngresoVisibility = false;
    correoIngresoController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.59),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                  child: Image.asset(
                    'assets/images/LogoInfoceaHorizontalVerde.png',
                    width: 300,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.7, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                  child: AutoSizeText(
                    'Ingresar',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Hind Siliguri',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: TextFormField(
                      controller: correoIngresoController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Correo Electrónico',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xFF248639),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Roboto',
                        color: Color(0xFF248639),
                        fontWeight: FontWeight.normal,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Por favor no olvide ingresar el correo electrónico';
                        }
                        if (val.length < 10) {
                          return 'Escriba un correo válido';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 0, 40, 0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: TextFormField(
                      onChanged: (_) => EasyDebounce.debounce(
                        'claveIngresoController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      controller: claveIngresoController,
                      obscureText: !claveIngresoVisibility,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_open_rounded,
                          color: Color(0xFF248639),
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => claveIngresoVisibility =
                                !claveIngresoVisibility,
                          ),
                          child: Icon(
                            claveIngresoVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 22,
                          ),
                        ),
                      ),
                      style: GoogleFonts.getFont(
                        'Roboto',
                        color: Color(0xFF248639),
                        fontWeight: FontWeight.normal,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'No olvide ingresar la contraseña para validar el usuario';
                        }
                        if (val.length < 8) {
                          return 'Las contraseñas mínimo tienen 8 caracteres';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.65, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                  child: InkWell(
                    onTap: () async {
                      await launchURL(
                          'mailto:ceagrodex@parquecrea.com?subject=Recuperar%20Contraseña%20Ceagrodex%20Infocea1.0&body=Por%20favor%20ayudarme%20con%20la%20recuperación%20de%20la%20contraseña%20del%20usuario%20con%20el%20correo:%0A%0D%0AMuchas%20gracias');
                    },
                    child: Text(
                      '¿Olvido su contraseña?',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 10,
                          ),
                    ),
                  ),
                ),
              ),
              FutureBuilder<ApiCallResponse>(
                future: LoginAPICeagrodexCall.call(
                  email: correoIngresoController.text,
                  password: claveIngresoController.text,
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
                  final buttonLoginAPICeagrodexResponse = snapshot.data;
                  return FFButtonWidget(
                    onPressed: () async {
                      rTALogin = await LoginAPICeagrodexCall.call(
                        email: correoIngresoController.text,
                        password: claveIngresoController.text,
                      );
                      if (rTALogin.succeeded) {
                        setState(() => FFAppState().token = getJsonField(
                              (buttonLoginAPICeagrodexResponse?.jsonBody ?? ''),
                              r'''$.access_token''',
                            ).toString());
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Información incorrecta'),
                              content: Text(
                                  'El correo electrónico o la contraseña no coinciden con nuestros registros o no es posible acceder a internet, por favor revise e intente nuevamente.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Cerrar'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                      setState(() => FFAppState().usuarioId = getJsonField(
                            (rTALogin?.jsonBody ?? ''),
                            r'''$.cliente_id''',
                          ));
                      setState(() => FFAppState().usuarioNombre = getJsonField(
                            (buttonLoginAPICeagrodexResponse?.jsonBody ?? ''),
                            r'''$.user.name''',
                          ).toString());
                      setState(() => FFAppState().usuarioEmail = getJsonField(
                            (buttonLoginAPICeagrodexResponse?.jsonBody ?? ''),
                            r'''$.user.email''',
                          ).toString());
                      setState(() => FFAppState().usuarioAvatar = getJsonField(
                            (buttonLoginAPICeagrodexResponse?.jsonBody ?? ''),
                            r'''$.user.avatar''',
                          ));
                      setState(() => FFAppState().fechaToken = getJsonField(
                            (rTALogin?.jsonBody ?? ''),
                            r'''$.expires_at''',
                          ).toString());
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardWidget(
                            token: getJsonField(
                              (buttonLoginAPICeagrodexResponse?.jsonBody ?? ''),
                              r'''$.access_token''',
                            ).toString(),
                          ),
                        ),
                        (r) => false,
                      );

                      setState(() {});
                    },
                    text: 'Acceder',
                    options: FFButtonOptions(
                      width: 300,
                      height: 55,
                      color: Color(0xFF06673C),
                      textStyle: GoogleFonts.getFont(
                        'Roboto',
                        color: Color(0xFFFAFAFA),
                        fontSize: 18,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: 30,
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  '¿Necesita una cuenta de usuario? ',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: InkWell(
                  onTap: () async {
                    await launchURL(
                        'mailto:ceagrodex@parquecrea.com?subject=Crear%Cuenta%20de%20Usuario%20Ceagrodex%20Infocea1.0&body=Por%20favor%20ayudarme%20con%20la%20creación%20de%20una%20cuenta%20de%20usuario%20con%20el%20correo:%0A%0D%0AMuchas%20gracias');
                  },
                  child: Text(
                    'Envíe un correo ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          lineHeight: 2,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Image.asset(
                  'assets/images/LogoCeagrodeVerde-small.png',
                  width: 200,
                  height: 60,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
