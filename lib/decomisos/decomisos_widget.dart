import '../backend/api_requests/api_calls.dart';
import '../components/vacios_fechas_widget.dart';
import '../decomisos_desposte/decomisos_desposte_widget.dart';
import '../detalles_decomiso/detalles_decomiso_widget.dart';
import '../evidencia_decomiso/evidencia_decomiso_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DecomisosWidget extends StatefulWidget {
  const DecomisosWidget({Key key}) : super(key: key);

  @override
  _DecomisosWidgetState createState() => _DecomisosWidgetState();
}

class _DecomisosWidgetState extends State<DecomisosWidget> {
  DateTime datePicked1;
  DateTime datePicked2;
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
                height: 150,
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
                                'assets/images/decomisos.jpg',
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
                                          Icons.policy_rounded,
                                          color: Color(0xFF57636C),
                                          size: 20,
                                        ),
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DecomisosDesposteWidget(),
                                            ),
                                          );
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
                                        'Decomisos',
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
                                        'de canales',
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
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                          child: Text(
                            'En Sacrificio',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Hind Siliguri',
                                  color: Color(0xFFF8AB74),
                                ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Seleccionar las fechas para la busqueda:',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      child: InkWell(
                        onTap: () async {
                          await DatePicker.showDatePicker(
                            context,
                            showTitleActions: true,
                            onConfirm: (date) {
                              setState(() => datePicked1 = date);
                            },
                            currentTime: getCurrentTimestamp,
                            minTime: DateTime(0, 0, 0),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFCFD4DB),
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 5, 12, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat('d/M/y', datePicked1),
                                    'Fecha inicio',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF57636C),
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Icon(
                                  Icons.date_range_outlined,
                                  color: Color(0xFF57636C),
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          onConfirm: (date) {
                            setState(() => datePicked2 = date);
                          },
                          currentTime: getCurrentTimestamp,
                          minTime: DateTime(0, 0, 0),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Color(0xFFCFD4DB),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 5, 12, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  dateTimeFormat('d/M/y', datePicked2),
                                  'Fecha fin',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF57636C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Icon(
                                Icons.date_range_outlined,
                                color: Color(0xFF57636C),
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                  child: FutureBuilder<ApiCallResponse>(
                    future: DecomisosSacrificiosCall.call(
                      cliente: FFAppState().usuarioId.toString(),
                      inicio: dateTimeFormat('d/M/y', datePicked1),
                      fin: dateTimeFormat('d/M/y', datePicked2),
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
                      final listViewDecomisosSacrificiosResponse =
                          snapshot.data;
                      return Builder(
                        builder: (context) {
                          final decomisosSacrificios = getJsonField(
                                (listViewDecomisosSacrificiosResponse
                                        ?.jsonBody ??
                                    ''),
                                r'''$''',
                              )?.toList() ??
                              [];
                          if (decomisosSacrificios.isEmpty) {
                            return Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 500,
                                child: VaciosFechasWidget(),
                              ),
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: decomisosSacrificios.length,
                            itemBuilder: (context, decomisosSacrificiosIndex) {
                              final decomisosSacrificiosItem =
                                  decomisosSacrificios[
                                      decomisosSacrificiosIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 5, 5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 10,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF8AB74),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Orden de Producción',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Hind Siliguri',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .format_list_numbered,
                                                            color: Color(
                                                                0xFF9E9E9E),
                                                            size: 24,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Text(
                                                              getJsonField(
                                                                decomisosSacrificiosItem,
                                                                r'''$.orden_produccion''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars:
                                                                        10,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .subtitle2,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '# Animal',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .subtitle1
                                                                .override(
                                                                  fontFamily:
                                                                      'Hind Siliguri',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .addchart_rounded,
                                                            color: Color(
                                                                0xFF9E9E9E),
                                                            size: 24,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        5,
                                                                        0),
                                                            child: Text(
                                                              getJsonField(
                                                                decomisosSacrificiosItem,
                                                                r'''$.numero_animal''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars:
                                                                        20,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'Procedencia:',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Hind Siliguri',
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                    Text(
                                                      'Proveedor:',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Hind Siliguri',
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                    Text(
                                                      'Tipo:',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Hind Siliguri',
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 0, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.nombre_procedencia''',
                                                        ).toString(),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Text(
                                                        getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.nombre_proveedor''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Text(
                                                        getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.tipo_animal''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: FlutterFlowIconButton(
                                                borderColor: Color(0xFFDBE2E7),
                                                borderRadius: 8,
                                                borderWidth: 1,
                                                buttonSize: 40,
                                                icon: Icon(
                                                  Icons.search_rounded,
                                                  color: Color(0xFF57636C),
                                                  size: 20,
                                                ),
                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DetallesDecomisoWidget(
                                                        decomiso: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.secuencia_decomiso''',
                                                        ).toString(),
                                                        numeroanimal:
                                                            getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.numero_animal''',
                                                        ).toString(),
                                                        orden: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.orden_produccion''',
                                                        ).toString(),
                                                        procedencia:
                                                            getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.nombre_procedencia''',
                                                        ).toString(),
                                                        proveedor: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.nombre_proveedor''',
                                                        ).toString(),
                                                        tipoanimal:
                                                            getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.tipo_animal''',
                                                        ).toString(),
                                                        fecha: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.fecha_decomiso''',
                                                        ).toString(),
                                                        hora: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.hora_decomiso''',
                                                        ).toString(),
                                                        concepto: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.concepto_decomiso''',
                                                        ).toString(),
                                                        patologia: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.patologia''',
                                                        ).toString(),
                                                        organo: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.organo''',
                                                        ).toString(),
                                                        url: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.url_video''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: FlutterFlowIconButton(
                                                borderColor: Color(0xFFDBE2E7),
                                                borderRadius: 8,
                                                borderWidth: 1,
                                                buttonSize: 40,
                                                icon: Icon(
                                                  Icons.slow_motion_video,
                                                  color: Color(0xFF57636C),
                                                  size: 20,
                                                ),
                                                onPressed: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          EvidenciaDecomisoWidget(
                                                        decomiso: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.secuencia_decomiso''',
                                                        ).toString(),
                                                        numeroanimal:
                                                            getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.numero_animal''',
                                                        ).toString(),
                                                        orden: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.orden_produccion''',
                                                        ).toString(),
                                                        procedencia:
                                                            getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.nombre_procedencia''',
                                                        ).toString(),
                                                        proveedor: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.nombre_proveedor''',
                                                        ).toString(),
                                                        tipoanimal:
                                                            getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.tipo_animal''',
                                                        ).toString(),
                                                        fecha: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.fecha_decomiso''',
                                                        ).toString(),
                                                        hora: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.hora_decomiso''',
                                                        ).toString(),
                                                        concepto: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.concepto_decomiso''',
                                                        ).toString(),
                                                        patologia: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.patologia''',
                                                        ).toString(),
                                                        organo: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.organo''',
                                                        ).toString(),
                                                        url: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.url_video''',
                                                        ).toString(),
                                                        politica: getJsonField(
                                                          decomisosSacrificiosItem,
                                                          r'''$.politica''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
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
