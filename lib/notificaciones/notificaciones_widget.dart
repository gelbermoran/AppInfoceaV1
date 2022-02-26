import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificacionesWidget extends StatefulWidget {
  const NotificacionesWidget({Key key}) : super(key: key);

  @override
  _NotificacionesWidgetState createState() => _NotificacionesWidgetState();
}

class _NotificacionesWidgetState extends State<NotificacionesWidget> {
  DateTime datePicked;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 25,
                      borderWidth: 11,
                      buttonSize: 60,
                      fillColor: FlutterFlowTheme.of(context).tertiaryColor,
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF9E9E9E),
                        size: 25,
                      ),
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 1000),
                            reverseDuration: Duration(milliseconds: 1000),
                            child: NavBarPage(initialPage: 'Dashboard'),
                          ),
                        );
                      },
                    ),
                    Text(
                      'Notificaciones',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Hind Siliguri',
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: InkWell(
                        onTap: () async {
                          await DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              setState(() => datePicked = date);
                            },
                            currentTime: getCurrentTimestamp,
                            minTime: DateTime(0, 0, 0),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: FaIcon(
                                FontAwesomeIcons.solidCalendarAlt,
                                color: Color(0x7F000000),
                                size: 15,
                              ),
                            ),
                            Text(
                              dateTimeFormat('yMMMd', getCurrentTimestamp),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Hind Siliguri',
                                    fontSize: 12,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder<ApiCallResponse>(
                  future: NotificacionesXFechasCall.call(
                    cliente: FFAppState().usuarioId,
                    inicio: valueOrDefault<String>(
                      functions.fechasSemana('inicio'),
                      '2022-02-12',
                    ),
                    fin: functions.fechasSemana('fin'),
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
                    final weekViewWidgetNotificacionesXFechasResponse =
                        snapshot.data;
                    return custom_widgets.WeekViewWidget(
                      width: MediaQuery.of(context).size.width,
                      height: 750,
                      heightPerMinute: 1.0,
                      events: functions.dummyEvent(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
