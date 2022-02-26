import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificacionesCopyWidget extends StatefulWidget {
  const NotificacionesCopyWidget({Key key}) : super(key: key);

  @override
  _NotificacionesCopyWidgetState createState() =>
      _NotificacionesCopyWidgetState();
}

class _NotificacionesCopyWidgetState extends State<NotificacionesCopyWidget> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        Navigator.pop(context);
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
                              'Febrero 2022',
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'LU',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '14',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'MA',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '15',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'MI',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '16',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'JU',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '17',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'VI',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '18',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'SA',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '19',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'DO',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          Text(
                            '20',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Text(
                    'Hoy',
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Hind Siliguri',
                          color: FlutterFlowTheme.of(context).primaryColor,
                        ),
                  ),
                ),
                Divider(
                  height: 8,
                  thickness: 1,
                  indent: 1,
                  endIndent: 1,
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
